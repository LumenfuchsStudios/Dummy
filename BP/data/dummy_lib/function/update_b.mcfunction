## * AydenTFoxx @ 2025-01-13 .. 2025-02-20
## * 
## * Updates the dummy with entity-like and custom behavior.


## Ignore if current block is a Redstone Torch or Block.
execute if predicate dummy_lib:block/dummy_stunlock run \
		return run particle dust{ color: 12062476, scale: 1.2 } ~ ~0.5 ~ 0.2 0.3 0.2 1.0 8 force