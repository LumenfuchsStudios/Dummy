## * AydenTFoxx @ 2025-03-02 .. 2025-04-01
## * 
## * Allows the dummy entity to break and place blocks in a world.
## ? Does not affect the initial "explosion" when summoned by a Dummy Totem.


## Set

# Display notice
execute if data storage lumenfuchs:flags { dummy: { griefing: true } } \
		run tellraw @s { "translate": "lumenfuchs.toggle_setting.griefing.disable", "fallback": "# Vandalism has been disabled.", "color": "red", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 318" } }

# Disable setting
execute if data storage lumenfuchs:flags { dummy: { griefing: true } } run return run data modify storage lumenfuchs:flags dummy.griefing set value false


## Reset

# Display notice
tellraw @s { "translate": "lumenfuchs.toggle_setting.griefing.enable", "fallback": "# Vandalism has been enabled.", "color": "green", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert?" } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 318" } }

# Enable setting
data modify storage lumenfuchs:flags dummy.griefing set value true