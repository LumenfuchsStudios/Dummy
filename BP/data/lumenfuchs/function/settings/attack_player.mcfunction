## * AydenTFoxx @ 2025-01-15 .. 2025-04-01
## * 
## * Toggles "attacking" behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { attack_player: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.attack_player.disable", "fallback": "# Violence has been disabled.", "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 304" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { attack_player: true } } run return run data modify storage lumenfuchs:flags dummy.attack_player set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.attack_player.enable", "fallback": "# Violence has been enabled.", "color": "green", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 304" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.attack_player set value true