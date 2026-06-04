@echo off
REM ================================================================
REM  Whetstone ? Re-export Discord channels WITH media download
REM  Requires: DiscordChatExporter.Cli.exe in same folder, or on PATH
REM  Set your token below (user token from Discord devtools)
REM ================================================================
SET TOKEN=YOUR_DISCORD_TOKEN_HERE
SET OUT=C:\Users\ASUS\Downloads\whetstone-media-export

REM elian's notes channels
DiscordChatExporter.Cli.exe export -c 1147915229544583198 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\pets"
DiscordChatExporter.Cli.exe export -c 1147915579399876678 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\build"
DiscordChatExporter.Cli.exe export -c 1147915752922435700 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\coloured-diamonds"
DiscordChatExporter.Cli.exe export -c 1147919352709005472 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\loc-totems"
DiscordChatExporter.Cli.exe export -c 1148041094966292560 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\class"
DiscordChatExporter.Cli.exe export -c 1148074041995960442 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\runes-abyss"
DiscordChatExporter.Cli.exe export -c 1148086750481232003 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\monster-cards"
DiscordChatExporter.Cli.exe export -c 1148112024165941340 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\off-road"
DiscordChatExporter.Cli.exe export -c 1148115303931330610 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\soul-orbs"
DiscordChatExporter.Cli.exe export -c 1148110972872044595 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\tower-of-origins"
DiscordChatExporter.Cli.exe export -c 1148941782747459634 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\dojo-tips"
DiscordChatExporter.Cli.exe export -c 1149166794922274888 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\wings-cultivation"
DiscordChatExporter.Cli.exe export -c 1149173783760998531 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\devour"
DiscordChatExporter.Cli.exe export -c 1150231291606872134 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\costumes"
DiscordChatExporter.Cli.exe export -c 1151440849897541673 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\event-timeline"
DiscordChatExporter.Cli.exe export -c 1151625486208860242 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\stigmata"
DiscordChatExporter.Cli.exe export -c 1154186317966618644 -t %TOKEN% -f HtmlDark --media --reuse-media -o "%OUT%\exr-cultivation"

echo Done! Images saved under %OUT%\{guide}\media\
pause
