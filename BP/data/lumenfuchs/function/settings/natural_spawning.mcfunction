## * AydenTFoxx @ 2025-01-15 .. 2025-02-14
## * 
## * Toggles natural-spawning behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { natural_spawning: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.natural_spawning.disable", "fallback": "# Natural Spawning has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 306" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { natural_spawning: true } } run return run data modify storage lumenfuchs:flags dummy.natural_spawning set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.natural_spawning.enable", "fallback": "# Natural Spawning has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 306" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.natural_spawning set value true