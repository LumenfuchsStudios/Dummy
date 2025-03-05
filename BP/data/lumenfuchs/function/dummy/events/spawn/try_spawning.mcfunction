## * AydenTFoxx @ 2025-03-04 .. 2025-03-04
## * 
## * Rolls a random coordinate around the player, then attempts to spawn the Dummy there.


# Roll random coordinates
function lumenfuchs:dummy/events/spawn/roll_random_pos

# Attempt spawning
function lumenfuchs:dummy/events/spawn/summon_anchor with storage lumenfuchs:flags dummy.spawn_pos

# Reset position storage
data remove storage lumenfuchs:flags dummy.spawn_pos