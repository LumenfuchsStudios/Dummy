## * AydenTFoxx @ 2025-01-15 .. 2025-04-01
## * 
## * Manages the dummy's materials.


tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_reset_bulk", "fallback": "Reset all to default?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 2010" } }, \
	{ "text": "[*] " , "color": "yellow", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_edit_bulk", "fallback": "Edit all settings to one value?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 3080" } }, \
	{ "translate": "lumenfuchs.setting.material.title", "fallback": "Dummy Material... ", "color": "gray", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.setting.material.description", "fallback": "Change the block textures used by the Dummy."} }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 21" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_reset_bulk", "fallback": "Reset all to default?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 2020" } }, \
	{ "text": "[*] " , "color": "yellow", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_edit_bulk", "fallback": "Edit all settings to one value?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 3090" } }, \
	{ "translate": "lumenfuchs.setting.material_hurt.title", "fallback": "Dummy Hurt Material... ", "color": "gray", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.setting.material_hurt.description", "fallback": "Change the \"hurt overlay\" displayed by the Dummy when hit by a player."} }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 22" } }, "\n\n\n", \
	{ "translate": "lumenfuchs.settings.menu_return", "fallback": "<-- Return", "color": "gold", "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "translate": "lumenfuchs.settings.menu_refresh", "fallback": "Refresh", "color": "dark_purple", "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 2" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]