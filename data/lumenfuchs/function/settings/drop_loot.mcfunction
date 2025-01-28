## * AydenTFoxx @ 2025-01-27
## * 
## * Allows the dummy entity to drop items on death.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { drop_loot: true } } \
		run tellraw @s { "text": "# Dummy Loot has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 317" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { drop_loot: true } } run return run data modify storage lumenfuchs:flags dummy.drop_loot set value false


## Reset

# Display notice
tellraw @s { "text": "# Dummy Loot has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 317" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.drop_loot set value true