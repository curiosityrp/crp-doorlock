resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Doorlocking script for Curiosity Roleplay'

version '1.0'

server_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua'
}

dependency 'es_extended'