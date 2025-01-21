## * AydenTFoxx @ 2025-01-19
## * 
## * Allows the dummy entity to spawn under direct skylight.


## Set

# Display notice
execute if data storage dummy_lib:flags { the_stall: { spawn_under_skylight: true } } \
		run tellraw @s { "text": "# Moonlit Spawning has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 316" } }

# Disable setting
execute if data storage dummy_lib:flags { the_stall: { spawn_under_skylight: true } } run return run data modify storage dummy_lib:flags the_stall.spawn_under_skylight set value false


## Reset

# Display notice
tellraw @s { "text": "# Moonlit Spawning has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 316" } }

# Enable setting
data modify storage dummy_lib:flags the_stall.spawn_under_skylight set value true