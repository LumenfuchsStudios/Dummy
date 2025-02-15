## * AydenTFoxx @ 2025-01-15 .. 2025-02-14
## * 
## * Toggles stalking behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { stalk_player: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.stalk_player.disable", "fallback": "# Stalking has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 302" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { stalk_player: true } } run return run data modify storage lumenfuchs:flags dummy.stalk_player set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.stalk_player.enable", "fallback": "# Stalking has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 302" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.stalk_player set value true