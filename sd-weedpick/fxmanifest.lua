fx_version 'cerulean'
game 'gta5'

description = ""
client_script {
    'client.lua',
    'config.lua'
}

server_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'server.lua'
}