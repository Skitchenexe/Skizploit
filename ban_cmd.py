from functions import *
from rules_cmd import get_rule
import discord
import time

async def ban_cmd(ctx, bot, user, rule):
    if user.id == 423290670405386251:
        await ctx.respond(embed=await emb_error('Bruh you really just try and ban me?? You\'re disrespectful and very cringe.'))
        return
    else:
        try:
            await user.send('https://discord.gg/k5qZQ7FKjq')
            full_rule = await get_rule(rule)
            emb = discord.Embed(title='🤡 Banned', description=f'You were banned for breaking rule number `{rule}`. This rule states: `{full_rule}`. If you rejoin, you agree to read the rules again and follow by them accordingly.', color=discord.Color.dark_red())
            emb.set_image(url='https://cdn.discordapp.com/attachments/970377874156699708/973461211167469638/unknown.png')
            await user.send(embed=emb)
            await user.kick()
            await ctx.respond(embed=await success(f'Successfully banned {user.mention}'))
        except Exception as e:
            await bot.get_user(423290670405386251).send(embed=await emb_error(str(e)))
            await ctx.send(embed=await emb_error(f'Something went wrong when trying to ban {user.mention}. Please try again.'))
        