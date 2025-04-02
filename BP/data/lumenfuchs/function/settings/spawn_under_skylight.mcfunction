## * AydenTFoxx @ 2025-01-19 .. 2025-04-01
## * 
## * Allows the dummy entity to spawn under direct skylight.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { spawn_under_skylight: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.spawn_under_skylight.disable", "fallback": "# Moonlight Spawning has been disabled.", "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 316" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { spawn_under_skylight: true } } run return run data modify storage lumenfuchs:flags dummy.spawn_under_skylight set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.spawn_under_skylight.enable", "fallback": "# Moonlight Spawning has been enabled.", "color": "green", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 316" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.spawn_under_skylight set value true