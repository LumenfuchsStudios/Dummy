## * AydenTFoxx @ 2025-01-16 .. 2025-01-31
## * 
## * Updates the dummy with entity-like and custom behavior.


## # PHYSICS

# Apply gravity
execute if loaded ~ ~ ~ if block ~ ~-0.1 ~ #lumenfuchs:transparent run function lumenfuchs:dummy/physics/accelerate
execute if loaded ~ ~ ~ if score @s lumenfuchs.momentum matches -200..200 run function lumenfuchs:dummy/physics/accelerate

# Apply upwards momentum (Slime Block)
execute if loaded ~ ~ ~ if block ~ ~ ~ slime_block run scoreboard players set @s lumenfuchs.momentum -32


# Raise from ground
execute if loaded ~ ~ ~ unless block ~ ~ ~ #lumenfuchs:transparent unless block ~ ~ ~ slime_block run function lumenfuchs:dummy/physics/move { direction: "~ ~0.1 ~" }

# Reset gravity
execute if loaded ~ ~ ~ unless block ~ ~-0.1 ~ #lumenfuchs:transparent \
        unless block ~ ~ ~ slime_block unless block ~ ~ ~ honey_block \
        run scoreboard players reset @s lumenfuchs.momentum


# Remove forceload
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } unless loaded ~ ~ ~ \
        as @e[type=marker, tag=lumenfuchs.entity.forceload, distance=..64] at @s run function lumenfuchs:dummy/utils/forceload/remove

## Ignore if dead
execute if loaded ~ ~ ~ if entity @s[tag=lumenfuchs.dummy.is_dead] run return run function lumenfuchs:dummy/events/death

# Add forceload
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } unless loaded ~ ~ ~ run function lumenfuchs:dummy/utils/forceload/create


## # BEHAVIOR

## Damage

# Return to Void
execute if entity @s[y=-64, dy=0] run return run tag @s add lumenfuchs.dummy.is_dead


# Simulate damage
execute if data entity @s attack run return run function lumenfuchs:dummy/events/hurt with storage lumenfuchs:flags dummy.material

# Enable invulnerability frames
scoreboard players remove @s[tag=lumenfuchs.dummy.is_hurt] lumenfuchs.dummy 1
scoreboard players set @s[tag=lumenfuchs.dummy.is_hurt, scores={ lumenfuchs.dummy=-1 }] lumenfuchs.dummy 7


# Reset color
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] if score @s lumenfuchs.dummy matches 4 run function lumenfuchs:dummy/utils/reset_color

# Reset rotation
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] if score @s lumenfuchs.dummy matches 0 run function lumenfuchs:dummy/physics/reset_limbs


# Reset invulnerability
tag @s[tag=lumenfuchs.dummy.is_hurt, scores={ lumenfuchs.dummy=..0 }] remove lumenfuchs.dummy.is_hurt
scoreboard players reset @s[scores={ lumenfuchs.dummy=..0 }] lumenfuchs.dummy


## Misc.

# Break light sources
execute if block ~ ~ ~ #lumenfuchs:luminous unless block ~ ~ ~ redstone_torch \
        if predicate lumenfuchs:random/10 run setblock ~ ~ ~ air destroy
