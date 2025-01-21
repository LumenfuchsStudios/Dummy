## * AydenTFoxx @ 2025-01-15 .. 2025-01-18
## * 
## * Manages ambient sounds of the dummy.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 203" } }, \
	{ "text": "Ambient sound: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The sound played by the Stall to all nearby players." } }, \
	{ "text": "$(ambience_presence)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 310" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 204" } }, \
	{ "text": "Stalking sound: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The sound played by the Stall to its targeted player." } }, \
	{ "text": "$(ambience_target)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 311" } }, "\n\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 3" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]