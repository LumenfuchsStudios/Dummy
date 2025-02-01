## * AydenTFoxx @ 2025-01-30 .. 2025-01-31
## * 
## * Creates a forceloading Marker to keep track of chunks loaded by the Dummy.


# Summon marker/pointer/anchor
summon marker ~ ~ ~ { \
    Tags: [ lumenfuchs.entity.forceload ] \
}


# Set forceloading to given chunk
execute unless loaded ~ ~ ~ run forceload add ~ ~