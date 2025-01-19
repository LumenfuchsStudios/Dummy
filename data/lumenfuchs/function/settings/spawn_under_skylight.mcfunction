## * AydenTFoxx @ 2025-01-19
## * 
## * Allows the dummy entity to spawn under direct skylight.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { spawn_under_skylight: true } } \
		run tellraw @s { "text": "# Moonlight Spawning has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/spawn_under_skylight" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { spawn_under_skylight: true } } run return run data modify storage lumenfuchs:flags dummy.spawn_under_skylight set value false


## Reset

# Display notice
tellraw @s { "text": "# Moonlight Spawning has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/spawn_under_skylight" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.spawn_under_skylight set value true