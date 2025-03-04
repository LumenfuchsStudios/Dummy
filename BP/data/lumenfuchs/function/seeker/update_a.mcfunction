## * AydenTFoxx @ 2025-01-27 .. 2025-03-02
## * 
## * Updates the Seeker with entity-like and custom behavior.


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

# Break light sources
execute if data storage lumenfuchs:flags { dummy: { griefing: true } } if predicate dummy_lib:random/1 \
        if block ~ ~ ~ #lumenfuchs:luminous unless block ~ ~ ~ redstone_torch run setblock ~ ~ ~ air destroy


## MISC

#? Inherit dummy_lib's update_a function
function dummy_lib:update_a { storage: "lumenfuchs:flags" }