## * AydenTFoxx @ 2025-01-15 .. 2025-04-01
## * 
## * Toggles thorns-like behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { harm_on_touch: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.harm_on_touch.disable", "fallback": "# Thorns have been disabled.", "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 303" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { harm_on_touch: true } } run return run data modify storage lumenfuchs:flags dummy.harm_on_touch set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.harm_on_touch.enable", "fallback": "# Thorns have been enabled.", "color": "green", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 303" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.harm_on_touch set value true