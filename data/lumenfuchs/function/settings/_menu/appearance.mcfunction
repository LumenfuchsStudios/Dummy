## * AydenTFoxx @ 2025-01-15 .. 2025-01-31
## * 
## * Manages the dummy's materials.


tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset all to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2010" } }, \
	{ "text": "[*] " , "color": "yellow", "hoverEvent": { "action": "show_text", "contents": ["Change all settings in this category to one value.", "\n", { "text": "Caution; You cannot undo this action.", "color": "gold" }] }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3080" } }, \
	{ "text": "Dummy Material... ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "Change the block textures used by the Dummy." }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 21" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset all to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2020" } }, \
	{ "text": "[*] " , "color": "yellow", "hoverEvent": { "action": "show_text", "contents": ["Change all settings in this category to one value.", "\n", { "text": "Caution; You cannot undo this action.", "color": "gold" }] }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3090" } }, \
	{ "text": "Dummy Hurt Material... ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "Change the \"hurt overlay\" displayed by the Dummy when hit by the player." }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 22" } }, "\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]