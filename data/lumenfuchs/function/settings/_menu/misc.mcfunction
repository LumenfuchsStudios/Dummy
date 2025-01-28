## * AydenTFoxx @ 2025-01-15 .. 2025-01-27
## * 
## * Manages extra features and the world's settings.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 214" } }, \
	{ "text": "Forceload Chunks: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": [ "If enabled, the Dummy will always forceload its own chunks.", "\n", { "text": "May cause intensive usage of resources and hardware.", "color": "red" } ] } }, \
	{ "text": "$(forceload_chunks)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 305" } }, "\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 215" } }, \
	{ "text": "Natural Spawning: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": [ "If enabled, the Dummy can spawn on particularly dark areas.", "\n", { "text": "Highly experimental; Use at your own risk.", "color": "gold" } ] } }, \
	{ "text": "$(natural_spawning)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 306" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 216" } }, \
	{ "text": "Spawn under Skylight: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": [ "If enabled, the Dummy can spawn in blocks exposed to the sky.", "\n", { "text": "Requires \"Natural Spawning\" to be enabled to work.", "color": "yellow" } ] } }, \
	{ "text": "$(spawn_under_skylight)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 316" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 217" } }, \
	{ "text": "Dummy Drops Loot: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "If enabled, the Dummy may drop unique items upon death." } }, \
	{ "text": "$(drop_loot)", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Toggle setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 317" } }, "\n\n\n", \
	{ "text": "[!] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": { "text": "Use to fix missing settings issues.", "color": "yellow" } } }, \
	{ "text": "[ Restore First Load ]", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Removes the \"first load\" flag, allowing any missing settings to be set properly." }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 400" }  }, "\n\n", \
	{ "text": "[!] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": { "text": "Warning! This is an irreversible action!", "color": "gold" } } }, \
	{ "text": "[ Restore All Settings ]", "color": "dark_red", "hoverEvent": { "action": "show_text", "contents": "Restores all settings to their default values." }, "clickEvent": { "action": "suggest_command", "value": "/trigger lumenfuchs.settings set 500" } }, "\n\n", \
	{ "text": "[!] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": { "text": "Caution! You cannot undo this without operator permissions!", "color": "red" } } }, \
	{ "text": "[ Disable Settings Editing ]", "color": "dark_red", "hoverEvent": { "action": "show_text", "contents": "Locks all settings as read-only. Requires operator privileges." }, "clickEvent": { "action": "suggest_command", "value": "/data modify storage lumenfuchs:flags allow_edit_settings set value false" }  }, "\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 5" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]