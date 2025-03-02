## * AydenTFoxx @ 2025-01-30 .. 2025-02-20
## * 
## * Creates a forceloading anchor to keep track of chunks loaded by the dummy entity.


# Summon Anchor
summon marker ~ ~ ~ { \
	Tags: [ dummy_lib.entity.forceload ] \
}


# Set forceloading to given chunk
execute unless loaded ~ ~ ~ run forceload add ~ ~