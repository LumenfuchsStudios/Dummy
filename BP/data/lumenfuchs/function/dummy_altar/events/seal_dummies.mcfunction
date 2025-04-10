## * AydenTFoxx @ 2025-04-05 .. 2025-04-07
## * 
## * Locks all Dummy-like creatures in a paralysis state;
## * This paralysis is separate and superseded by Redstone-based paralysis.

# Happy b-day to me :)


## INIT

# Add paralysis tag
tag @e[type=interaction, tag=dummy_lib.entity, tag=!dummy_lib.dummy.paralysis, distance=..512] add dummy_lib.dummy.paralysis

# Set light
execute unless score @s dummy_lib.clock matches 1.. if block ~ ~1 ~ #air run tag @s add lumenfuchs.dummy_altar.spawn_light
execute unless score @s dummy_lib.clock matches 1.. if block ~ ~1 ~ #air run setblock ~ ~1 ~ light

# Set ambience clock
execute unless score @s dummy_lib.clock matches 1.. run scoreboard players set @s dummy_lib.momentum 30


# Disable feedback
execute unless score @s dummy_lib.clock matches 1.. run data modify entity @s response set value false

# Display "running" state
execute unless score @s dummy_lib.clock matches 1.. run data modify entity @n[type=block_display, tag=lumenfuchs.entity.dummy_altar, distance=..1.1] block_state.Properties.charges set value "4"


# Display initial feedback
execute unless score @s dummy_lib.clock matches 1.. run playsound block.respawn_anchor.set_spawn block @a[distance=..16] ~ ~0.5 ~ 1.5 1.2
execute unless score @s dummy_lib.clock matches 1.. run particle flash ~ ~0.5 ~ 0.0 0.0 0.0 1 1 force


## TICK

# Tick clock
scoreboard players operation @s dummy_lib.clock += #dummy_lib_tick_rate_b dummy_lib.dummy

# Display visual feedback
particle soul_fire_flame ~ ~1.5 ~ 0.05 0.05 0.05 0.02 4
particle portal ~ ~0.5 ~ 0.05 0.05 0.05 1.2 8 force


# Tick alt clock
scoreboard players operation @s dummy_lib.momentum += #dummy_lib_tick_rate_b dummy_lib.dummy

# Play ambience
execute if score @s dummy_lib.momentum matches 160 run playsound block.portal.ambient block @a[distance=..32] ~ ~1 ~ 1 0.8 0.1

# Reset clock
scoreboard players reset @s[scores={ dummy_lib.momentum=160.. }] dummy_lib.momentum


## END

# Remove tags (& trigger)
execute if score @s dummy_lib.clock matches 400.. run tag @e[type=interaction, tag=dummy_lib.entity, tag=dummy_lib.dummy.paralysis, distance=..512] remove dummy_lib.dummy.paralysis

execute if score @s dummy_lib.clock matches 400.. run tag @s remove lumenfuchs.dummy_altar.seal_dummies


# Remove light
execute if score @s[tag=lumenfuchs.dummy_altar.spawn_light] dummy_lib.clock matches 400.. if block ~ ~1 ~ light run setblock ~ ~1 ~ air
execute if score @s[tag=lumenfuchs.dummy_altar.spawn_light] dummy_lib.clock matches 400.. run tag @s remove lumenfuchs.dummy_altar.spawn_light

# Display final feedback
execute if score @s dummy_lib.clock matches 400.. run playsound block.beacon.deactivate block @a[distance=..16] ~ ~0.5 ~ 1 0.8
execute if score @s dummy_lib.clock matches 400.. run particle explosion ~ ~0.5 ~ 0.0 0.0 0.0 1 1 force


# Set cooldown
scoreboard players add @s[scores={ dummy_lib.clock=400.. }] dummy_lib.dummy 160

# Display "deactivated" state
execute if score @s dummy_lib.clock matches 400.. run data modify entity @n[type=block_display, tag=lumenfuchs.entity.dummy_altar, distance=..1.1] block_state.Properties.charges set value "0"


# Reset clocks
scoreboard players reset @s[scores={ dummy_lib.clock=400.. }] dummy_lib.momentum
scoreboard players reset @s[scores={ dummy_lib.clock=400.. }] dummy_lib.clock
