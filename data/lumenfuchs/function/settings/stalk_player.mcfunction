## * AydenTFoxx @ 2025-01-15
## * 
## * Toggles stalking behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { stalk_player: true } } \
		run tellraw @s { "text": "# Stalking has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/stalk_player" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { stalk_player: true } } run return run data modify storage lumenfuchs:flags dummy.stalk_player set value false


## Reset

# Display notice
tellraw @s { "text": "# Stalking has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/stalk_player" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.stalk_player set value true