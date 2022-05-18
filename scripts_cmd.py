from functions import *
from discord.ui import Button, View
import discord
import os

async def scripts_cmd(ctx, bot):
    total = []
    for file in os.listdir('scripts'):
        if os.path.isdir:
            total.append(file)
    
    categories_embed = discord.Embed(
        title = 'Categories',
        description = 'This is a list of available categories. Please type the **NUMBER** corresponding to the category you wish to select.',
        color = discord.Color.dark_blue()
    )

    new_total = ''
    
    for x in range(len(total)):
        new_total += f'**{x + 1}.** `{total[x]}`\n'

    categories_embed.add_field(name='Choose:', value=new_total)

    await ctx.respond(embed=categories_embed)

    category = await bot.wait_for("message", check=None)
    if not category.content.isdigit():
        await ctx.send(embed=await emb_error('File was not found in list or something went wrong. Please try again.'))
        return

    scripts = []

    try:
        for file in os.listdir(f'scripts/{total[int(category.content) - 1].lower()}'):
            if os.path.isfile:
                scripts.append(file)
    except:
        await ctx.send(embed=await emb_error('File was not found in list or something went wrong. Please try again.'))
        return

    if 'sbg' in total[int(category.content) - 1].lower():

        sub_dirs = []
        sub_dirs_str = ''

        for file in os.listdir(f'scripts/{total[int(category.content) - 1]}'):
            if os.path.isfile:
                sub_dirs.append(file)

        for x in range(len(sub_dirs)):
            for _ in range(len(sub_dirs)):
                if int(sub_dirs[x][3:]) > 9 and x < 9:
                    placeholder = sub_dirs[x]
                    sub_dirs.remove(placeholder)
                    sub_dirs.append(placeholder)
      
        for x in range(len(sub_dirs)):
            sub_dirs_str += f'**{x + 1}.** `{sub_dirs[x]}`\n'

        await ctx.send(embed=discord.Embed(
            title = 'Category: SBG',
            description = 'This is a list of available sub categories for script by game. Please type the **NUMBER** corresponding to the sub category you wish to select.',
            color = discord.Color.dark_blue()
        ).add_field(name='Choose:', value=sub_dirs_str))

        sub_dir_select = await bot.wait_for('message', check=None)
        if not sub_dir_select.content.isdigit():
            await ctx.send(embed=await emb_error('File was not found in list or something went wrong. Please try again.'))
            return
        
        sub_game_dirs = []
        sub_game_dirs_str = ''

        for file in os.listdir(f'scripts/SBG/{sub_dirs[int(sub_dir_select.content) - 1].upper()}'):
            if os.path.isfile:
                sub_game_dirs.append(file)

        for x in range(len(sub_game_dirs)):
            sub_game_dirs_str += f'**{x + 1}.** `{sub_game_dirs[x]}`\n'

        await ctx.send(embed=discord.Embed(
            title = f'Category: {sub_dirs[int(sub_dir_select.content) - 1]}',
            description = 'This is a list of available sub categories for script by game. Please type the **NUMBER** corresponding to the sub category you wish to select.',
            color = discord.Color.dark_blue()
        ).add_field(name='Choose:', value=sub_game_dirs_str))

        chosen_game = await bot.wait_for('message', check=None)
        if not chosen_game.content.isdigit():
            await ctx.send(embed=emb_error('File was not found in list or something went wrong. Please try again.'))
            return

        script_dir = []
        script_dir_str = ''

        for file in os.listdir(f'scripts/SBG/{sub_dirs[int(sub_dir_select.content) - 1].upper()}/{sub_game_dirs[int(chosen_game.content) - 1]}'):
            if os.path.isfile:
                script_dir.append(file)

        for x in range(len(script_dir)):
            script_dir_str += f'**{x + 1}.** `{script_dir[x]}`\n'

        await ctx.send(embed=discord.Embed(
            title = f'Category: {sub_game_dirs[int(chosen_game.content) - 1]}',
            description = 'This is a list of available sub categories for script by game. Please type the **NUMBER** corresponding to the sub category you wish to select.',
            color = discord.Color.dark_blue()
        ).add_field(name='Choose:', value=script_dir_str))

        chosen_script = await bot.wait_for('message', check=None)
        if not chosen_script.content.isdigit():
            await ctx.send(embed=emb_error('File was not found in list or something went wrong. Please try again.'))
            return

        try:
            await ctx.send(file=discord.File(f'scripts/SBG/{sub_dirs[int(sub_dir_select.content) - 1].upper()}/{sub_game_dirs[int(chosen_game.content) - 1]}/{script_dir[int(chosen_script.content) - 1]}'), view=await favorite(f'scripts/SBG/{sub_dirs[int(sub_dir_select.content) - 1].upper()}/{sub_game_dirs[int(chosen_game.content) - 1]}/{script_dir[int(chosen_script.content) - 1]}', ctx))
        except FileNotFoundError:
            await ctx.send(embed=emb_error('File could not be found in list or something went wrong. Please try again.'))

    elif 'gui' in total[int(category.content) - 1].lower():
        await ctx.send('hi lmao')
    else:
        script_string = ''

        for x in range(len(scripts)):
            script_string += f'**{x + 1}.** `{scripts[x]}`\n'

        scripts_embed = discord.Embed(
            title = f'Category: {total[int(category.content) - 1]}',
            description = f'This is a list of available script for the category `{total[int(category.content) - 1]}`. Please type the **NUMBER** corresponding to the script wish to select.',
            color = discord.Color.dark_blue()
        )

        scripts_embed.add_field(name='Choose:', value = script_string)

        await ctx.send(embed=scripts_embed)

        selected = await bot.wait_for("message", check=None)
        if not selected.content.isdigit():
            await ctx.send(embed=emb_error('File was not found in list or something went wrong. Please try again.'))
            return

        try:
            if not total[int(category.content) - 1] == 'Favorites':
                await ctx.send(file=discord.File(f'./scripts/{total[int(category.content) - 1]}/{scripts[int(selected.content) - 1]}'), view=await favorite(f'./scripts/{total[int(category.content) - 1]}/{scripts[int(selected.content) - 1]}', ctx))
            else:
                await ctx.send(file=discord.File(f'./scripts/{total[int(category.content) - 1]}/{scripts[int(selected.content) - 1]}'))
        except FileNotFoundError:
            await ctx.send(embed=emb_error('File could not be found in list or something wen wrong. Please try again.'))  