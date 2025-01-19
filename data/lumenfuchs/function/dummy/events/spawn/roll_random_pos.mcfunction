execute store result storage lumenfuchs:flags dummy.spawn_pos.x int 1.0 run random value -32..32
execute store result storage lumenfuchs:flags dummy.spawn_pos.y int 1.0 run random value -16..16
execute store result storage lumenfuchs:flags dummy.spawn_pos.z int 1.0 run random value -32..32

function lumenfuchs:dummy/events/spawn/summon_anchor with storage lumenfuchs:flags dummy.spawn_pos