## * AydenTFoxx @ 2025-01-15 .. 2025-01-18
## * 
## * Manages the dummy's various behaviors.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 205" } }, \
	{ "text": "Stall Stares Player: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Stall will always look at the nearest player." } }, \
	{ "text": "$(stare_player)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 301" } }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 206" } }, \
	{ "text": "Stall Staring Distance: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "How far can the Stall stare players." } }, \
	{ "text": "$(stare_player_distance)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 312" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 207" } }, \
	{ "text": "Stall Stalks Player: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Stall will walk towards the nearest player." } }, \
	{ "text": "$(stalk_player)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 302" } }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 208" } }, \
	{ "text": "Stall Stalking Distance: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "How far can the Stall stalk a player." } }, \
	{ "text": "$(stalk_player_distance)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 313" } }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 209" } }, \
	{ "text": "Stall Stalking Threshold: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The max distance a Stall will approach a player before stopping." } }, \
	{ "text": "$(stalk_player_threshold)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 314" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 213" } }, \
	{ "text": "Weeping Stall: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Stall will not move while being looked at." } }, \
	{ "text": "$(freeze_when_stared)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 307" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 210" } }, \
	{ "text": "Stall Hurts on Touch: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Stall has a thorns-like effect against all creatures." } }, \
	{ "text": "$(harm_on_touch)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 303" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 211" } }, \
	{ "text": "Stall \"Attacks\" Player: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Stall will perform an \"attack\" ability when near a player." } }, \
	{ "text": "$(attack_player)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 304" } }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 212" } }, \
	{ "text": "Stall \"Attack\" Distance: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "How close the Stall needs to be to perform its \"attack\" ability." } }, \
	{ "text": "$(attack_player_distance)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 315" } }, "\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 4" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]