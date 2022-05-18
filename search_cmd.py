from discord.ui import Button, View
import discord
import os

async def search_cmd(ctx, bot, name):
    button = Button(label='Click pls', style=discord.ButtonStyle.blurple, emoji='😘')
    view = View()
    view.add_item(button)
    await ctx.send('Hi', view = view)