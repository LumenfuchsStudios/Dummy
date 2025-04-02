## * AydenTFoxx @ 2025-01-15 .. 2025-04-02
## * 
## * Toggles staring behavior of the dummy entity.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.stare_player.disable", "fallback": "# Staring has been disabled.", "color": "red", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 301" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } run return run data modify storage lumenfuchs:flags dummy.stare_player set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.stare_player.enable", "fallback": "# Staring has been enabled.", "color": "green", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 301" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.stare_player set value true