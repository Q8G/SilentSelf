import discord;from discord.ext import commands
bot=commands.Bot(command_prefix="!",intents=discord.Intents.all(),self_bot=True)
TOKEN="UR TOKEN"
GUILDID=1234567890123456789   #Example
CHANNELID=1234567890123456789   #Example                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       #https://instagram.com/9omw
@bot.event
async def on_ready():
    guild=bot.get_guild(GUILDID);create_channel=guild.get_channel(CHANNELID)
    if create_channel and isinstance(create_channel,discord.VoiceChannel):await create_channel.connect()
bot.run(TOKEN,bot=False)
