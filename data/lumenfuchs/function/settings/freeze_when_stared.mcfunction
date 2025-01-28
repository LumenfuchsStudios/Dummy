## * AydenTFoxx @ 2025-01-16 .. 2025-01-27
## * 
## * Toggles Weeping Angel/SCP-179 -like behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } \
		run tellraw @s { "text": "# Weeping has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 307" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } run return run data modify storage lumenfuchs:flags dummy.freeze_when_stared set value false


## Reset

# Display notice
tellraw @s { "text": "# Weeping has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 307" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.freeze_when_stared set value true