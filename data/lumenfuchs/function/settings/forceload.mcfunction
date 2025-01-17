## * AydenTFoxx @ 2025-01-15
## * 
## * Toggles force-loading behavior of the dummy entity.
## ? Disabled by default, might affect SSD durability.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } \
		run tellraw @s { "text": "# Force-loading has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/forceload" } }

# Disable forceloading
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } run return run data modify storage lumenfuchs:flags dummy.forceload_chunks set value false


## Reset

# Display notice
tellraw @s { "text": "# Force-loading has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Revert?" }, "clickEvent": { "action": "run_command", "value": "/function lumenfuchs:settings/forceload" } }

# Enable forceloading
data modify storage lumenfuchs:flags dummy.forceload_chunks set value true