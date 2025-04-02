## * AydenTFoxx @ 2025-01-15 .. 2025-04-01
## * 
## * Toggles force-loading behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.forceload_chunks.disable", "fallback": "# Force-loading has been disabled.", "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 305" } }

# Disable forceloading
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } run return run data modify storage lumenfuchs:flags dummy.forceload_chunks set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.forceload_chunks.enable", "fallback": "# Force-loading has been enabled.", "color": "green", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 305" } }

# Enable forceloading
data modify storage lumenfuchs:flags dummy.forceload_chunks set value true