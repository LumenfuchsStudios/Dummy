## * AydenTFoxx @ 2025-01-15
## * 
## * Plays step noises depending on the dummy's standing block.


execute if block ~ ~-1 ~ #mineable/axe run return run playsound block.wood.step neutral @a[distance=..32] ~ ~ ~ 0.5 0.8 0.1

execute if block ~ ~-1 ~ #mineable/hoe run return run playsound block.grass.step neutral @a[distance=..32] ~ ~ ~ 0.5 0.8

execute if block ~ ~-1 ~ #sand run return run playsound block.sand.step neutral @a[distance=..16] ~ ~ ~ 0.5 0.8 0.1
execute if block ~ ~-1 ~ #mineable/shovel run return run playsound block.gravel.step neutral @a[distance=..32] ~ ~ ~ 0.5 0.8 0.1

playsound block.stone.step neutral @a[distance=..16] ~ ~ ~ 0.5 0.8 0.1