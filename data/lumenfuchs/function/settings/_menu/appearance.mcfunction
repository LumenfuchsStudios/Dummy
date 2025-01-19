## * AydenTFoxx @ 2025-01-15 .. 2025-01-18
## * 
## * Manages the dummy's materials.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 201" } }, \
	{ "text": "Dummy Material: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy." } }, \
	{ "text": "$(material)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 308" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 202" } }, \
	{ "text": "Dummy Hurt Material: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy when hurt." } }, \
	{ "text": "$(material_hurt)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 309" } }, "\n\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]