from discord.ext import commands
from scripts_cmd import scripts_cmd
from search_cmd import search_cmd
from rules_cmd import *
from ban_cmd import ban_cmd
from dotenv import load_dotenv
import discord
import os

intents = discord.Intents.all()

bot = commands.Bot(command_prefix='+', intents=intents)
load_dotenv()

@bot.event
async def on_ready():
    print('Bot ONLINE')
    await bot.change_presence(activity=discord.Activity(type=discord.ActivityType.watching, name="you sleep"))

@bot.slash_command(name='scripts', description='Categorized Roblox script pack')
async def scripts(ctx):
    await scripts_cmd(ctx, bot)

@bot.slash_command(name='search', description='Searches for scripts by game name')
async def search(ctx, name):
    await search_cmd(ctx, bot, name)

@bot.slash_command(name='ban', description='Bans specified user for breaking the rules')
async def ban(ctx, user: discord.Member, rule):
    await ban_cmd(ctx, bot, user, rule)

@bot.slash_command(name='addrule', description='Add a rule')
async def addrule(ctx, rule):
    await add_rule_cmd(ctx, bot, rule)

@bot.slash_command(name='removerule', description='Remove a rule')
async def removerule(ctx, rule):
    await remove_rule_cmd(ctx, bot, rule)

@bot.slash_command(name='changerule', description='Change a rule')
async def changerule(ctx, rule, new_rule):
    await change_rule_cmd(ctx, bot, rule, new_rule)

bot.run(os.environ.get('TOKEN'))