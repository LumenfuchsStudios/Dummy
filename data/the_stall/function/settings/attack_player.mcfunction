## * AydenTFoxx @ 2025-01-15
## * 
## * Toggles "attacking" behavior of the dummy entity.


## Set

# Display notice
execute if data storage dummy_lib:flags { the_stall: { attack_player: true } } \
		run tellraw @s { "text": "# Violence has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 304" } }

# Disable setting
execute if data storage dummy_lib:flags { the_stall: { attack_player: true } } run return run data modify storage dummy_lib:flags the_stall.attack_player set value false


## Reset

# Display notice
tellraw @s { "text": "# Violence has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger the_stall.settings set 304" } }

# Enable setting
data modify storage dummy_lib:flags the_stall.attack_player set value true