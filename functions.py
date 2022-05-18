
from discord.ui import Button, View
import discord
import shutil
import os

async def success(desc):
    success_error = discord.Embed(
        title=f':ballot_box_with_check: Success', 
        description=desc,
        color=discord.Colour.dark_blue()
    )
    
    return success_error

async def emb_error(desc):
    embed_error = discord.Embed(
        title=f':x: Error', 
        description=desc,
        color=discord.Colour.dark_red()
    )
    
    return embed_error


async def favorite(script, ctx):
    button = Button(label='Add script to favorites', style=discord.ButtonStyle.red, emoji='🤍')

    async def button_callback(interaction):
        await interaction.response.edit_message(view=None)
        shutil.copy2(script, './scripts/Favorites')

        await ctx.respond(embed=await success('Added script to favorites.'))

    button.callback = button_callback

    view = View()
    view.add_item(button)
    return view

async def remove_favorite(script):
    pass