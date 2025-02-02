## * AydenTFoxx @ 2025-01-15 .. 2025-01-27
## * 
## * Toggles natural-spawning behavior of the dummy entity.
## ? Disabled by default, still in early development!


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { natural_spawning: true } } \
		run tellraw @s { "text": "# Natural Spawning has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 306" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { natural_spawning: true } } run return run data modify storage lumenfuchs:flags dummy.natural_spawning set value false


## Reset

# Display notice
tellraw @s { "text": "# Natural Spawning has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 306" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.natural_spawning set value true