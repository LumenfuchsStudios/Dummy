## * AydenTFoxx @ 2025-01-13 .. 2025-04-07
## * 
## * Updates the dummy with entity-like and custom behavior.


#? Failsafe: Set GUID
execute unless score @s dummy_lib.guid matches 1.. run function dummy_lib:utils/create_guid


## Ignore if current block is a Redstone Torch or Block.
execute if predicate dummy_lib:block/dummy_stunlock run \
		return run particle dust{ color: 12062476, scale: 1.2 } ~ ~0.5 ~ 0.2 0.3 0.2 1.0 8 force

## Ignore if paralyzed
execute if entity @s[tag=dummy_lib.dummy.paralysis] run \
		return run particle dust{ color: 1402304, scale: 1.2 } ~ ~0.5 ~ 0.2 0.3 0.2 1.0 8 force