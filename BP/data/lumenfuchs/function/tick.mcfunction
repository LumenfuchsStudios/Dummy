## * AydenTFoxx @ 2025-01-15 .. 2025-01-31
## * 
## * Ticks all code from this datapack at a custom rate.


## FUNCTION MANAGEMENT

# Tick clock
scoreboard players add #lumenfuchs_tick_a lumenfuchs.dummy 1
scoreboard players add #lumenfuchs_tick_b lumenfuchs.dummy 1


# Update dummy entities
execute if score #lumenfuchs_tick_a lumenfuchs.dummy = #lumenfuchs_tick_rate_a lumenfuchs.dummy as @e[type=interaction, tag=lumenfuchs.entity.dummy] at @s run function lumenfuchs:dummy/update_a with storage lumenfuchs:flags dummy
execute if score #lumenfuchs_tick_b lumenfuchs.dummy = #lumenfuchs_tick_rate_b lumenfuchs.dummy as @e[type=interaction, tag=lumenfuchs.entity.dummy, tag=!lumenfuchs.dummy.is_dead] at @s if loaded ~ ~ ~ run function lumenfuchs:dummy/update_b with storage lumenfuchs:flags dummy

execute if score #lumenfuchs_tick_a lumenfuchs.dummy = #lumenfuchs_tick_rate_a lumenfuchs.dummy as @e[type=interaction, tag=lumenfuchs.entity.seeker] at @s run function lumenfuchs:seeker/update_a with storage lumenfuchs:flags dummy
execute if score #lumenfuchs_tick_b lumenfuchs.dummy = #lumenfuchs_tick_rate_b lumenfuchs.dummy as @e[type=interaction, tag=lumenfuchs.entity.seeker, tag=!lumenfuchs.dummy.is_dead] at @s if loaded ~ ~ ~ run function lumenfuchs:seeker/update_b with storage lumenfuchs:flags dummy

# Remove stray limbs if Dummy was killed without removing them
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb] at @s unless entity @n[type=interaction, tag=lumenfuchs.entity, distance=..8] run function lumenfuchs:dummy/events/death


# Reset clock
execute if score #lumenfuchs_tick_a lumenfuchs.dummy >= #lumenfuchs_tick_rate_a lumenfuchs.dummy run scoreboard players set #lumenfuchs_tick_a lumenfuchs.dummy 0
execute if score #lumenfuchs_tick_b lumenfuchs.dummy >= #lumenfuchs_tick_rate_b lumenfuchs.dummy run scoreboard players set #lumenfuchs_tick_b lumenfuchs.dummy 0


## SETTINGS TRIGGER

# Display settings messages
execute as @a[scores={ lumenfuchs.settings=1 }] run function lumenfuchs:settings/_menu
execute as @a[scores={ lumenfuchs.settings=2 }] run function lumenfuchs:settings/_menu/appearance with storage lumenfuchs:flags dummy

execute as @a[scores={ lumenfuchs.settings=21 }] run function lumenfuchs:settings/_menu/appearance_i with storage lumenfuchs:flags dummy.material
execute as @a[scores={ lumenfuchs.settings=22 }] run function lumenfuchs:settings/_menu/appearance_ii with storage lumenfuchs:flags dummy.material_hurt

execute as @a[scores={ lumenfuchs.settings=3 }] run function lumenfuchs:settings/_menu/ambience with storage lumenfuchs:flags dummy
execute as @a[scores={ lumenfuchs.settings=4 }] run function lumenfuchs:settings/_menu/behavior with storage lumenfuchs:flags dummy
execute as @a[scores={ lumenfuchs.settings=5 }] run function lumenfuchs:settings/_menu/misc with storage lumenfuchs:flags dummy

# Display help message
execute as @a[scores={ lumenfuchs.settings=200 }] run function lumenfuchs:help


# Modify settings...
execute as @a[scores={ lumenfuchs.settings=200.. }] run function lumenfuchs:settings/_actions


# Reset trigger
scoreboard players enable @a[scores={ lumenfuchs.settings=1.. }] lumenfuchs.settings
scoreboard players set @a[scores={ lumenfuchs.settings=1.. }] lumenfuchs.settings 0


## DUMMY SPAWNING

# Tick spawning timer when in poorly lit areas
execute if data storage lumenfuchs:flags { dummy: { natural_spawning: true } } unless entity @n[type=interaction, tag=lumenfuchs.entity.dummy] \
		as @a at @s if predicate lumenfuchs:block/light_low run function lumenfuchs:dummy/events/spawn/tick_spawning

# Attempt spawning
execute if data storage lumenfuchs:flags { dummy: { natural_spawning: true } } as @e[type=marker, tag=lumenfuchs.entity.dummy_spawn] at @s \
		run function lumenfuchs:dummy/events/spawn/test_anchor


# Remove score when outside valid areas
execute if data storage lumenfuchs:flags { dummy: { natural_spawning: true } } unless entity @n[type=interaction, tag=lumenfuchs.entity.dummy] \
		as @a[scores={ lumenfuchs.dummy=1.. }, predicate=!lumenfuchs:block/light_low] at @s run scoreboard players remove @s lumenfuchs.dummy 1

execute if data storage lumenfuchs:flags { dummy: { natural_spawning: true } } run scoreboard players reset @a[scores={ lumenfuchs.dummy=..0 }] lumenfuchs.dummy


## DUMMY SUMMONING (EGG)

# Replace vessel with Dummy
execute as @e[type=marker, tag=lumenfuchs.dummy.vessel] at @s positioned ~-0.5 ~ ~-0.5 run function lumenfuchs:dummy/events/summon_egg

# Replace vessel with Seeker
execute as @e[type=marker, tag=lumenfuchs.seeker.vessel] at @s positioned ~-0.5 ~ ~-0.5 run function lumenfuchs:seeker/events/summon_egg


## DUMMY FORCELOADER

# Update forceload entities
execute as @e[type=marker, tag=lumenfuchs.entity.forceload] at @s run function lumenfuchs:dummy/utils/forceload/update