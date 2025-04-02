## * AydenTFoxx @ 2025-01-15 .. 2025-04-01
## * 
## * Toggles staring behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.stare_player.disable", "fallback": "# Staring has been disabled.", "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 301" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } run return run data modify storage lumenfuchs:flags dummy.stare_player set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.stare_player.enable", "fallback": "# Staring has been enabled.", "color": "green", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 301" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.stare_player set value true