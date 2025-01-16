## * AydenTFoxx @ 2025-01-16
## * 
## * Toggles Weeping Angel/SCP-179 -like behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } \
		run tellraw @s { "text": "# Weeping has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/freeze_when_stared" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } run return run data modify storage lumenfuchs:flags dummy.freeze_when_stared set value false


## Reset

# Display notice
tellraw @s { "text": "# Weeping has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/freeze_when_stared" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.freeze_when_stared set value true