## * AydenTFoxx @ 2025-01-15
## * 
## * Ticks all code from this datapack at a custom rate.


## FUNCTION MANAGEMENT

# Tick clock
scoreboard players add #lumenfuchs_tick lumenfuchs.dummy 1


# Update functions
execute if score #lumenfuchs_tick lumenfuchs.dummy >= #lumenfuchs_tick_rate lumenfuchs.dummy as @e[type=interaction, tag=lumenfuchs.entity.dummy] at @s run function lumenfuchs:dummy/update with storage lumenfuchs:flags dummy

# Reset clock
execute if score #lumenfuchs_tick lumenfuchs.dummy >= #lumenfuchs_tick_rate lumenfuchs.dummy run scoreboard players set #lumenfuchs_tick lumenfuchs.dummy 0


## SETTINGS TRIGGER

# Display settings messages
execute as @a[scores={ lumenfuchs.settings=1 }] run function lumenfuchs:settings/_menu
execute as @a[scores={ lumenfuchs.settings=2 }] run function lumenfuchs:settings/_menu/appearance with storage lumenfuchs:flags dummy
execute as @a[scores={ lumenfuchs.settings=3 }] run function lumenfuchs:settings/_menu/ambience with storage lumenfuchs:flags dummy
execute as @a[scores={ lumenfuchs.settings=4 }] run function lumenfuchs:settings/_menu/behavior with storage lumenfuchs:flags dummy
execute as @a[scores={ lumenfuchs.settings=5 }] run function lumenfuchs:settings/_menu/misc with storage lumenfuchs:flags dummy

# Display help message
execute as @a[scores={ lumenfuchs.settings=200 }] run function lumenfuchs:help


# Display "read-only settings" message
execute as @a[scores={ lumenfuchs.settings=200.. }] if data storage lumenfuchs:flags { allow_edit_settings: false } \
		run tellraw @s { "text": "Settings are read-only in this world.", "color": "red", "hoverEvent": { "action": "show_text", "contents": [ { "text": "Revert? ", "color": "yellow" }, { "text": "(Requires OP)", "color": "red" } ] }, "clickEvent": { "action": "run_command", "value": "/data modify storage lumenfuchs:flags allow_edit_settings set value true" } }

# Modify settings...
execute if entity @a[scores={ lumenfuchs.settings=200.. }] run function lumenfuchs:settings/_actions


# Reset trigger
scoreboard players enable @a[scores={ lumenfuchs.settings=1.. }] lumenfuchs.settings
scoreboard players set @a[scores={ lumenfuchs.settings=1.. }] lumenfuchs.settings 0