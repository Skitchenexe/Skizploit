from configparser import ConfigParser
from functions import *
import discord

rules_channel = 970156753285181520
rule_file = 'rules.ini'
configpar = ConfigParser()
configpar.read(rule_file)

async def get_rule(rule):
    return configpar['rules'][rule][1:-1]

async def send_rules(bot, rules_str):
    rules_embed = discord.Embed(
        title='Rules',
        description=f'\n\n\n{rules_str}',
        color=discord.Color.dark_blue()
    )

    warning_embed = discord.Embed(
        title=':warning: Warning :warning:',
        description='Breaking any of these rules will result in a ban!!!!!!!!!!!! You will be brought under prosecution by the council and your fate will be decided!!!!!!!!!',
        color=discord.Color.dark_red()
    )

    async for message in bot.get_channel(rules_channel).history(limit=50):
            if message.author.id == 970197561744957440:
                await message.delete()

    await bot.get_channel(rules_channel).send(embed=rules_embed)
    await bot.get_channel(rules_channel).send(embed=warning_embed)


async def add_rule_cmd(ctx, bot, rule):
    try:
        configpar.set('rules', str(
            len(list(configpar['rules'])) + 1), f'"{rule}"')

        with open(rule_file, 'w') as configfile:
            configpar.write(configfile)

        rules_list = dict(configpar.items('rules'))
        rules_str = ''

        for x in range(len(rules_list)):
            rules_str += f'**{x + 1}.** {rules_list[str(x + 1)][1:-1]}\n'

        await send_rules(bot, rules_str)
        await ctx.respond(embed=await success(f'Added `"{rule}"` to <#{rules_channel}>.'))
    except:
        await ctx.respond(embed=emb_error('Something went wrong when trying to add rule. Please try again.'))

async def remove_rule_cmd(ctx, bot, rule):
    try:
        configpar.remove_option('rules', rule)
        with open(rule_file, 'w') as configfile:
            configpar.write(configfile)

        rules_list = dict(configpar.items('rules'))
        rules_str = ''

        for x in range(len(rules_list)):
            rules_str += f'**{x + 1}.** {rules_list[str(x + 1)][1:-1]}\n'

        await send_rules(bot, rules_str)
        await ctx.respond(embed=await success(f'Removed rule number `{rule}` from <#{rules_channel}>.'))
    except Exception as e:
        await bot.get_user(423290670405386251).send(embed=await emb_error(str(e)))
        await ctx.respond(embed=emb_error('Something went wrong when trying to remove rule. Please try again.'))

async def change_rule_cmd(ctx, bot, rule, newrule):
    try:
        configpar.set('rules', rule, f'"{newrule}"')
        with open(rule_file, 'w') as configfile:
            configpar.write(configfile)

        rules_list = dict(configpar.items('rules'))
        rules_str = ''

        for x in range(len(rules_list)):
            rules_str += f'**{x + 1}.** {rules_list[str(x + 1)][1:-1]}\n'

        await send_rules(bot, rules_str)
        await ctx.respond(embed=await success(f'Changed rule number `{rule}` to `"{newrule}"` in <#{rules_channel}>.'))
    except Exception as e:
        await bot.get_user(423290670405386251).send(embed=await emb_error(str(e)))
        await ctx.respond(embed=emb_error('Something went wrong when trying to remove rule. Please try again.'))