## * AydenTFoxx @ 2025-01-17 .. 2025-03-04
## * 
## * Creates an "anchor" for spawning the Dummy, then teleports it to the given coordinate.


# Summon marker
summon marker ~ ~ ~ { Tags: [ lumenfuchs.entity.dummy_spawn ] }

# Teleport marker
$tp @n[type=marker, tag=lumenfuchs.entity.dummy_spawn, distance=..8] ~$(x) ~$(y) ~$(z)