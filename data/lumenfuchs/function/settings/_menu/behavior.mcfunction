## * AydenTFoxx @ 2025-01-15
## * 
## * Manages the dummy's various behaviors.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 205" } }, \
	{ "text": "Dummy Stares Player: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Dummy will always look at the nearest player." } }, \
	{ "text": "$(stare_player)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 301" } }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings 206" } }, \
	{ "text": "Dummy Staring Distance: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "How far can the Dummy stare players." } }, \
	{ "text": "$(stare_player_distance)", "color": "yellow" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 207" } }, \
	{ "text": "Dummy Stalks Player: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Dummy will walk towards the nearest player." } }, \
	{ "text": "$(stalk_player)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 302" } }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 208" } }, \
	{ "text": "Dummy Stalking Distance: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "How far can the Dummy stalk a player." } }, \
	{ "text": "$(stalk_player_distance)", "color": "yellow" }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 209" } }, \
	{ "text": "Dummy Stalking Threshold: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The max distance a Dummy will approach a player before stopping." } }, \
	{ "text": "$(stalk_player_threshold)", "color": "yellow" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 213" } }, \
	{ "text": "Weeping Dummy: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Dummy will not move while being looked at." } }, \
	{ "text": "$(freeze_when_stared)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 307" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 210" } }, \
	{ "text": "Dummy Hurts on Touch: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Dummy has a thorns-like effect against all creatures." } }, \
	{ "text": "$(harm_on_touch)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 303" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 211" } }, \
	{ "text": "Dummy \"Attacks\" Player: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Dummy will perform an \"attack\" ability when near a player." } }, \
	{ "text": "$(attack_player)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 304" } }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 212" } }, \
	{ "text": "Dummy \"Attack\" Distance: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "How close the Dummy needs to be to perform its \"attack\" ability." } }, \
	{ "text": "$(attack_player_distance)", "color": "yellow" }, "\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 4" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]