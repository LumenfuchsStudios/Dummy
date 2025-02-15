## * AydenTFoxx @ 2025-01-15 .. 2025-01-30
## * 
## * Plays step noises depending on the dummy's standing block.


## Ignore if block below is Wool-related
execute if block ~ ~-1 ~ #wool run return 0
execute if block ~ ~-1 ~ #wool_carpets run return 0


# Axe-related (wood-types)
execute if block ~ ~-1 ~ #mineable/axe run return run playsound block.wood.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1

# Hoe-related (leaves)
execute if block ~ ~-1 ~ #mineable/hoe run return run playsound block.azalea_leaves.step neutral @a[distance=..32] ~ ~ ~ 1 0.8


# Block-specific
execute if block ~ ~-1 ~ #sand run return run playsound block.sand.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1
execute if block ~ ~-1 ~ #snow run return run playsound block.snow.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1

execute if block ~ ~-1 ~ #lumenfuchs:iron_blocks run return run playsound block.metal.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1
execute if block ~ ~-1 ~ #lumenfuchs:mossy run return run playsound block.moss.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1

execute if block ~ ~-1 ~ gravel run return run playsound block.gravel.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1
execute if block ~ ~-1 ~ mud run return run playsound block.mud.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1
execute if block ~ ~-1 ~ netherrack run return run playsound block.netherrack.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1
execute if block ~ ~-1 ~ sculk run return run playsound block.sculk.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1

execute if block ~ ~-1 ~ soul_sand run return run playsound block.soul_sand.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1
execute if block ~ ~-1 ~ soul_soil run return run playsound block.soul_soil.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1

execute if block ~ ~-1 ~ #lumenfuchs:amethyst_blocks run return run playsound block.amethyst_block.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1
execute if block ~ ~-1 ~ #lumenfuchs:amethyst_clusters run return run playsound block.amethyst_cluster.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1


# Shovel-related (soft blocks)
execute if block ~ ~-1 ~ grass_block if predicate lumenfuchs:block/can_see_sky unless predicate lumenfuchs:block/light_full \
        run return run playsound block.wet_grass.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1

execute if block ~ ~-1 ~ #mineable/shovel run return run playsound block.grass.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1


## Fallback
playsound block.stone.step neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.1