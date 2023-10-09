resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

shared_scripts {
    '@qb-core/import.lua',
    'config.lua'
}

server_scripts {
	'server.lua'
}

client_scripts {
	'client.lua'
}

files {
    'ui/app.js',
    'ui/index.html',
    'ui/style.css',
    'ui/*.png',
}

ui_page {
    'ui/index.html'
}server_scripts { '@mysql-async/lib/MySQL.lua' }server_scripts { '@mysql-async/lib/MySQL.lua' }