## * AydenTFoxx @ 2025-01-27 .. 2025-04-01
## * 
## * Allows the dummy entity to drop items on death.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { drop_loot: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.drop_loot.disable", "fallback": "# Dummy Loot has been disabled.", "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 317" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { drop_loot: true } } run return run data modify storage lumenfuchs:flags dummy.drop_loot set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.drop_loot.enable", "fallback": "# Dummy Loot has been enabled.", "color": "green", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 317" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.drop_loot set value true