## * AydenTFoxx @ 2025-01-15 .. 2025-01-17
## * 
## * Ticks all code from this datapack at a custom rate.


## FUNCTION MANAGEMENT

# Update functions
execute if score #dummy_lib_tick_a dummy_lib.dummy >= #dummy_lib_tick_rate_a dummy_lib.dummy as @e[type=interaction, tag=dummy_lib.entity.dummy, tag=the_stall.entity.stall] at @s run function dummy_lib:entity/update_a with storage dummy_lib:flags the_stall
execute if score #dummy_lib_tick_b dummy_lib.dummy >= #dummy_lib_tick_rate_b dummy_lib.dummy as @e[type=interaction, tag=dummy_lib.entity.dummy, tag=the_stall.entity.stall, tag=!dummy_lib.dummy.is_dead] at @s if loaded ~ ~ ~ run function dummy_lib:entity/update_b with storage dummy_lib:flags the_stall


## SETTINGS TRIGGER

# Display settings messages
execute as @a[scores={ the_stall.settings=1 }] run function the_stall:settings/_menu
execute as @a[scores={ the_stall.settings=2 }] run function the_stall:settings/_menu/appearance with storage dummy_lib:flags the_stall
execute as @a[scores={ the_stall.settings=3 }] run function the_stall:settings/_menu/ambience with storage dummy_lib:flags the_stall
execute as @a[scores={ the_stall.settings=4 }] run function the_stall:settings/_menu/behavior with storage dummy_lib:flags the_stall
execute as @a[scores={ the_stall.settings=5 }] run function the_stall:settings/_menu/misc with storage dummy_lib:flags the_stall

# Display help message
execute as @a[scores={ the_stall.settings=200 }] run function the_stall:help


# Display "read-only settings" message
execute as @a[scores={ the_stall.settings=200.. }] if data storage dummy_lib:flags { allow_edit_settings: false } \
		run tellraw @s { "text": "Settings are read-only in this world.", "color": "red", "hoverEvent": { "action": "show_text", "contents": [ { "text": "Revert? ", "color": "yellow" }, { "text": "(Requires OP)", "color": "red" } ] }, "clickEvent": { "action": "run_command", "value": "/data modify storage dummy_lib:flags allow_edit_settings set value true" } }

# Modify settings...
execute if entity @a[scores={ the_stall.settings=200.. }] run function the_stall:settings/_actions


# Reset trigger
scoreboard players enable @a[scores={ the_stall.settings=1.. }] the_stall.settings
scoreboard players set @a[scores={ the_stall.settings=1.. }] the_stall.settings 0


## STALL SPAWNING

# Tick spawning timer when in poorly lit areas
execute if data storage dummy_lib:flags { the_stall: { natural_spawning: true } } unless entity @n[type=interaction, tag=the_stall.entity.stall] \
		as @a at @s if predicate the_stall:block/light_low run function the_stall:entity/tick_spawning

# Attempt spawning
execute if data storage dummy_lib:flags { the_stall: { natural_spawning: true } } as @e[type=marker, tag=dummy_lib.dummy_spawn.the_stall] at @s \
		run function dummy_lib:events/spawn/test_anchor { namespace: "the_stall" }


# Remove score when outside valid areas
execute if data storage dummy_lib:flags { the_stall: { natural_spawning: true } } unless entity @n[type=interaction, tag=the_stall.entity.stall] \
		as @a[scores={ dummy_lib.dummy=1.. }, predicate=!the_stall:block/light_low] at @s run scoreboard players remove @s dummy_lib.dummy 1

execute if data storage dummy_lib:flags { the_stall: { natural_spawning: true } } run scoreboard players reset @a[scores={ dummy_lib.dummy=..0 }] dummy_lib.dummy


## DUMMY SUMMONING (EGG)

# Replace vessel with Dummy
execute as @e[type=marker, tag=the_stall.vessel] at @s positioned ~-0.5 ~ ~-0.5 run function the_stall:events/summon_egg