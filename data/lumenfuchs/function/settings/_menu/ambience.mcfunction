## * AydenTFoxx @ 2025-01-15
## * 
## * Manages ambient sounds of the dummy.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 203" } }, \
	{ "text": "Ambient sound: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The sound played by the Dummy to all nearby players." } }, \
	{ "text": "$(ambience_presence)", "color": "yellow" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 204" } }, \
	{ "text": "Stalking sound: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The sound played by the Dummy to its targeted player." } }, \
	{ "text": "$(ambience_target)", "color": "yellow" }, "\n\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]