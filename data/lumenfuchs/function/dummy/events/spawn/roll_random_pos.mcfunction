## * AydenTFoxx @ 2025-01-17 .. 2025-01-27
## * 
## * Rolls a random coordinate set around the player, then attempts a Dummy spawn at that position.


# Roll random coordinates
execute store result storage lumenfuchs:flags dummy.spawn_pos.x int 1.0 run random value -32..32
execute store result storage lumenfuchs:flags dummy.spawn_pos.y int 1.0 run random value -16..16
execute store result storage lumenfuchs:flags dummy.spawn_pos.z int 1.0 run random value -32..32

# Attempt spawning
function lumenfuchs:dummy/events/spawn/summon_anchor with storage lumenfuchs:flags dummy.spawn_pos