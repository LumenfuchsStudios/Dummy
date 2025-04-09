## * AydenTFoxx @ 2025-04-05 .. 2025-04-08
## * 
## * ...

# Ayden's B-Day event


## INIT

# Swap block palette
execute if entity @s[tag=lumenfuchs.dummy_altar.swap_materials] run function lumenfuchs:dummy_altar/utils/swap_materials
tag @s[tag=lumenfuchs.dummy_altar.swap_materials] remove lumenfuchs.dummy_altar.swap_materials


# Ignore until activated
execute if entity @s[tag=lumenfuchs.dummy_altar.deactivated] run return run function lumenfuchs:dummy_altar/events/activate


## AMBIENT

# Remove barrier if exploded
execute if entity @n[type=tnt, nbt={ fuse: 1s }, distance=..3] if predicate dummy_lib:random/50 if block ~ ~ ~ barrier run setblock ~ ~ ~ air
execute if entity @n[type=tnt, nbt={ fuse: 1s }, distance=..2] if block ~ ~ ~ barrier run setblock ~ ~ ~ air

# Remove self if block is broken
execute unless block ~ ~ ~ barrier run return run function lumenfuchs:dummy_altar/utils/remove_self


# Display ambient particles
execute unless score @s dummy_lib.clock matches 1.. unless score @s dummy_lib.dummy matches 1.. \
        run particle reverse_portal ~ ~0.5 ~ 0.1 0.4 0.1 0.03 2


## Tick ambience clock
execute unless score @s dummy_lib.clock matches 1.. unless score @s dummy_lib.dummy matches 1.. run scoreboard players operation @s dummy_lib.momentum += #dummy_lib_tick_rate_b dummy_lib.dummy


# Play ambient sound
execute unless score @s dummy_lib.clock matches 1.. unless score @s dummy_lib.dummy matches 1.. if score @s dummy_lib.momentum matches 120.. if predicate dummy_lib:random/5 run tag @s add lumenfuchs.play_ambience
execute unless score @s dummy_lib.clock matches 1.. unless score @s dummy_lib.dummy matches 1.. if score @s dummy_lib.momentum matches 360.. run tag @s add lumenfuchs.play_ambience

execute if entity @s[tag=lumenfuchs.play_ambience] run playsound block.respawn_anchor.ambient block @a[distance=..32] ~ ~0.5 ~ 1 0.8 0.1


## Reset clock
scoreboard players reset @s[tag=lumenfuchs.play_ambience] dummy_lib.momentum
tag @s[tag=lumenfuchs.play_ambience] remove lumenfuchs.play_ambience


## BEHAVIOR

# Seal Dummies
execute unless score @s dummy_lib.dummy matches 1.. if entity @s[tag=lumenfuchs.dummy_altar.seal_dummies] \
        run function lumenfuchs:dummy_altar/events/seal_dummies

# Remove Dummies
execute unless score @s dummy_lib.dummy matches 1.. if entity @s[tag=lumenfuchs.dummy_altar.remove_dummies] \
        run function lumenfuchs:dummy_altar/events/remove_dummies

# Remove All
execute unless score @s dummy_lib.dummy matches 1.. if entity @s[tag=lumenfuchs.dummy_altar.remove_all] \
        run function lumenfuchs:dummy_altar/events/remove_all


## COOLDOWN

# Tick cooldown
scoreboard players operation @s[scores={ dummy_lib.dummy=1.. }] dummy_lib.dummy -= #dummy_lib_tick_rate_b dummy_lib.dummy


# Enable feedback
data modify entity @s[scores={ dummy_lib.dummy=..0 }] response set value true

# Display "active" state
execute if score @s dummy_lib.dummy matches ..0 run data modify entity @n[type=block_display, tag=lumenfuchs.entity.dummy_altar, distance=..1.1] block_state.Properties.charges set value "2"

# Play audio feedback
execute if score @s dummy_lib.dummy matches ..0 run playsound block.beacon.activate block @a[distance=..16] ~ ~0.5 ~ 1 0.8


# Reset cooldown
scoreboard players reset @s[scores={ dummy_lib.dummy=..0 }] dummy_lib.dummy