## * AydenTFoxx @ 2025-01-15
## * 
## * Display the main settings panel.


# Intro
execute unless data storage lumenfuchs:flags first_load_settings run tellraw @s [ { "text": "--> ", "color": "aqua" }, { "text": "Lumenfuchs Studios", "color": "yellow", "bold": true, "clickEvent": { "action": "open_url", "value": "https://github.com/LumenfuchsStudios" } }, { "text": " presents...\n", "color": "aqua" }, { "text": "\n    [ ", "color": "black" }, { "text": "The Dummy", "color": "black", "obfuscated": true }, { "text": " ]\n", "color": "black" } ]
execute unless data storage lumenfuchs:flags first_load_settings run data modify storage lumenfuchs:flags first_load_settings set value true

# Menu
tellraw @s [ "", \
	{ "text": "----+{ ", "color": "dark_gray" }, \
	{ "text": "Settings: ", "color": "gray" }, \
	{ "text": "Dummy", "color": "gold" }, \
	{ "text": " }+----", "color": "dark_gray" }, "\n\n", \
	{ "text": "* ", "color": "dark_purple" }, \
	{ "text": "Appearance...", "color": "blue", "hoverEvent": { "action": "show_text", "contents": "Change how the Dummy is rendered." }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2" } }, "\n\n", \
	{ "text": "* ", "color": "dark_purple" }, \
	{ "text": "Ambience...", "color": "blue", "hoverEvent": { "action": "show_text", "contents": "Change the Dummy's ambient effects." }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3" } }, "\n", \
	{ "text": "* ", "color": "dark_purple" }, \
	{ "text": "Behavior...", "color": "blue", "hoverEvent": { "action": "show_text", "contents": "Change the Dummy's behaviors." }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 4" } }, "\n\n", \
	{ "text": "* ", "color": "dark_purple" }, \
	{ "text": "Misc...", "color": "blue", "hoverEvent": { "action": "show_text", "contents": "Extra settings and storage management." }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 5" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]