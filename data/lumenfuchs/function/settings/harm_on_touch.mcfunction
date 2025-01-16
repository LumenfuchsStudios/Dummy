## * AydenTFoxx @ 2025-01-15
## * 
## * Toggles thorns-like behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { harm_on_touch: true } } \
		run tellraw @s { "text": "# Thorns have been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/harm_on_touch" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { harm_on_touch: true } } run return run data modify storage lumenfuchs:flags dummy.harm_on_touch set value false


## Reset

# Display notice
tellraw @s { "text": "# Thorns have been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/harm_on_touch" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.harm_on_touch set value true