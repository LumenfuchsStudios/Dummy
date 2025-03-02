## * AydenTFoxx @ 2025-01-16 .. 2025-02-20
## * 
## * Updates the Dummy with entity-like and custom behavior.


## FORCE-LOADING

# Remove forceload
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } unless loaded ~ ~ ~ \
        as @e[type=marker, tag=dummy_lib.entity.forceload, distance=..64] at @s run function dummy_lib:utils/forceload/remove

## Ignore if dead
execute if loaded ~ ~ ~ if entity @s[tag=dummy_lib.dummy.is_dead] run return run function lumenfuchs:dummy/events/death

# Add forceload
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } unless loaded ~ ~ ~ run function dummy_lib:utils/forceload/create


## Ignore if unloaded
execute unless loaded ~ ~ ~ run return fail


## BEHAVIOR

# Simulate damage
execute if data entity @s attack run function lumenfuchs:dummy/events/hurt with storage lumenfuchs:flags dummy.material

# Break light sources
execute if block ~ ~ ~ #lumenfuchs:luminous unless block ~ ~ ~ redstone_torch \
        if predicate dummy_lib:random/10 run setblock ~ ~ ~ air destroy


## MISC

#? Inherit dummy_lib's update_a function
function dummy_lib:update_a { storage: "lumenfuchs:flags" }