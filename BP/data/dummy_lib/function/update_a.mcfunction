## * AydenTFoxx @ 2025-01-16 .. 2025-04-08
## * 
## * Updates the dummy with entity-like and custom behavior.

## ? Function Arguments:
#? storage: The namespaced storage to read the datapack's settings from.


## # PHYSICS

# Apply gravity
execute if block ~ ~-0.1 ~ #dummy_lib:transparent unless block ~ ~ ~ water run function dummy_lib:physics/accelerate
execute if block ~ ~-0.1 ~ #dummy_lib:transparent if block ~ ~ ~ water run function dummy_lib:physics/accelerate_underwater

execute if score @s dummy_lib.momentum matches -200..200 unless block ~ ~ ~ water run function dummy_lib:physics/accelerate
execute if score @s dummy_lib.momentum matches -100..100 if block ~ ~ ~ water run function dummy_lib:physics/accelerate_underwater

# Apply upwards momentum (Slime Block)
execute if block ~ ~ ~ slime_block run scoreboard players set @s dummy_lib.momentum -32


# Raise from ground
execute unless block ~ ~ ~ #dummy_lib:transparent unless block ~ ~ ~ slime_block run function dummy_lib:physics/move { direction: "~ ~0.1 ~" }

# Reset gravity
execute unless block ~ ~-0.1 ~ #dummy_lib:transparent \
        unless block ~ ~ ~ slime_block unless block ~ ~ ~ honey_block \
        run scoreboard players reset @s dummy_lib.momentum

## Ignore if dead
execute if loaded ~ ~ ~ if entity @s[tag=dummy_lib.dummy.is_dead] run return run function dummy_lib:events/death


## # BEHAVIOR

## Damage

# Return to Void
execute if entity @s[y=-64, dy=0] run return run tag @s add dummy_lib.dummy.is_dead


# Simulate damage
$execute if data entity @s attack run function dummy_lib:events/hurt with storage $(storage) dummy.material

# Enable invulnerability frames
scoreboard players remove @s[tag=dummy_lib.dummy.is_hurt] dummy_lib.dummy 1
scoreboard players set @s[tag=dummy_lib.dummy.is_hurt, scores={ dummy_lib.dummy=-1 }] dummy_lib.dummy 7


# Display "red" hurt overlay
$execute if entity @s[tag=dummy_lib.dummy.is_hurt] if score @s dummy_lib.dummy matches 7 run function dummy_lib:utils/set_hurt_overlay { storage: "$(storage)" }

# Reset color
$execute if entity @s[tag=dummy_lib.dummy.is_hurt] if score @s dummy_lib.dummy matches 4 run function dummy_lib:utils/reset_material { storage: "$(storage)" }

# Reset rotation
execute if entity @s[tag=dummy_lib.dummy.is_hurt] if score @s dummy_lib.dummy matches 0 run function dummy_lib:physics/reset_limbs


# Reset invulnerability
tag @s[tag=dummy_lib.dummy.is_hurt, scores={ dummy_lib.dummy=..0 }] remove dummy_lib.dummy.is_hurt
scoreboard players reset @s[scores={ dummy_lib.dummy=..0 }] dummy_lib.dummy