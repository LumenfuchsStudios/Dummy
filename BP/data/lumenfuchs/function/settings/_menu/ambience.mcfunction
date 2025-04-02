## * AydenTFoxx @ 2025-01-15 .. 2025-04-02
## * 
## * Manages ambient sounds of the dummy.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_reset", "fallback": "Reset to default?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 203" } }, \
	{ "translate": "lumenfuchs.setting.ambience_presence.title", "fallback": "Ambient Sound: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.setting.ambience_presence.description", "fallback": "The sound played by the Dummy to all nearby players." } } }, \
	{ "text": "$(ambience_presence)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_edit", "fallback": "Change setting?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 310" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_reset", "fallback": "Reset to default?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 204" } }, \
	{ "translate": "lumenfuchs.setting.ambience_target.title", "fallback": "Stalking sound: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.setting.ambience_target.description", "fallback": "The sound played by the Dummy to it targeted player." } } }, \
	{ "text": "$(ambience_target)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_edit", "fallback": "Change setting?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 311" } }, "\n\n\n\n", \
	{ "translate": "lumenfuchs.settings.menu_return", "fallback": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "translate": "lumenfuchs.settings.menu_refresh", "fallback": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]