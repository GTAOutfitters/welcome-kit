fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'GTAOutfitters'
description 'GTAOutfitters Welcome Kit (FREE) - a configurable welcome panel for joining players: server name, welcome text, rules, and Discord / store / website buttons.'
version '1.0.0'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

shared_script 'config.lua'
client_script 'client.lua'
