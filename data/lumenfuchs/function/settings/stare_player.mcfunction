## * AydenTFoxx @ 2025-01-15
## * 
## * Toggles staring behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } \
		run tellraw @s { "text": "# Staring has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/stare_player" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } run return run data modify storage lumenfuchs:flags dummy.stare_player set value false


## Reset

# Display notice
tellraw @s { "text": "# Staring has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/stare_player" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.stare_player set value true