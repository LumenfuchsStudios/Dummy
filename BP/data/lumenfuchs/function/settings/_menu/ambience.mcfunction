## * AydenTFoxx @ 2025-01-15 .. 2025-04-01
## * 
## * Manages ambient sounds of the dummy.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_reset", "fallback": "Reset to default?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 203" } }, \
	{ "translate": "lumenfuchs.setting.ambience_presence.title", "fallback": "Ambient Sound: ", "color": "gray", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.setting.ambience_presence.description", "fallback": "The sound played by the Dummy to all nearby players." } } }, \
	{ "text": "$(ambience_presence)", "color": "yellow", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_edit", "fallback": "Change setting?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 310" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_reset", "fallback": "Reset to default?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 204" } }, \
	{ "translate": "lumenfuchs.setting.ambience_target.title", "fallback": "Stalking sound: ", "color": "gray", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.setting.ambience_target.description", "fallback": "The sound played by the Dummy to it targeted player." } } }, \
	{ "text": "$(ambience_target)", "color": "yellow", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_edit", "fallback": "Change setting?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 311" } }, "\n\n\n\n", \
	{ "translate": "lumenfuchs.settings.menu_return", "fallback": "<-- Return", "color": "gold", "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "translate": "lumenfuchs.settings.menu_refresh", "fallback": "Refresh", "color": "dark_purple", "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 3" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]