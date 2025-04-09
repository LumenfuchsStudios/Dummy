## * AydenTFoxx @ 2025-04-05 - 2025-04-07
## * 
## * Delivers a SIGTERM to all DummyLib entities in a large radius.

# Happy b-day, Ayden!


## INIT

# Display "running" state
execute unless score @s dummy_lib.clock matches 1.. run data modify entity @n[type=block_display, tag=lumenfuchs.entity.dummy_altar, distance=..1.1] block_state.Properties.charges set value "4"

# Display initial feedback
execute unless score @s dummy_lib.clock matches 1.. run playsound block.beacon.power_select block @a[distance=..32] ~ ~0.5 ~ 1 0.8 0.1
execute unless score @s dummy_lib.clock matches 1.. run playsound entity.warden.sonic_charge block @a[distance=..32] ~ ~0.5 ~ 1.5 1 0.2

execute unless score @s dummy_lib.clock matches 1.. run particle explosion ~ ~0.5 ~ 0.0 0.0 0.0 1 1 force


## TICK

# Tick clock
scoreboard players operation @s dummy_lib.clock += #dummy_lib_tick_rate_b dummy_lib.dummy

# Display visual feedback
execute unless score @s dummy_lib.clock matches 60.. run particle enchant ~ ~1.5 ~ 0.1 0.2 0.1 1 12
execute unless score @s dummy_lib.clock matches 60.. run particle portal ~ ~1 ~ 0.1 0.2 0.1 0.8 8

particle white_smoke ~ ~1.5 ~ 0.1 0.2 0.1 0.02 6 force
particle end_rod ~ ~1.5 ~ 0.1 0.2 0.1 0.02 4 force


## END

# Trigger "death" to all DummyLib creatures
execute if score @s dummy_lib.clock matches 80.. as @e[type=interaction, tag=dummy_lib.entity, distance=..512] at @s run function dummy_lib:events/death


# Display final feedback
execute if score @s dummy_lib.clock matches 80.. run playsound entity.wither.death block @a[distance=..32] ~ ~0.5 ~ 1.2 0.8 0.1

execute if score @s dummy_lib.clock matches 80.. run particle explosion_emitter ~ ~0.5 ~ 0.0 0.0 0.0 1 1 force
execute if score @s dummy_lib.clock matches 80.. run particle large_smoke ~ ~0.5 ~ 0.05 0.05 0.05 0.1 20


# Set cooldown
scoreboard players set @s[scores={ dummy_lib.clock=80.. }] dummy_lib.dummy 480

# Disable feedback
data modify entity @s[scores={ dummy_lib.clock=80.. }] response set value false

# Display "deactivated" state
execute if score @s dummy_lib.clock matches 80.. run data modify entity @n[type=block_display, tag=lumenfuchs.entity.dummy_altar, distance=..1.1] block_state.Properties.charges set value "0"


# Remove trigger
tag @s[scores={ dummy_lib.clock=80.. }] remove lumenfuchs.dummy_altar.remove_dummies

# Reset clock
scoreboard players reset @s[scores={ dummy_lib.clock=80.. }] dummy_lib.clock
