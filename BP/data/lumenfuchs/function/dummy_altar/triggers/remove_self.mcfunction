## * AydenTFoxx @ 2025-04-07
## * 
## * Sends a signal to the Dummy Altar to remove itself.


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_altar/remove_self

# Ignore if Altar is busy
execute as @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] if score @s dummy_lib.clock matches 1.. run return fail


# Remove anchor block
execute at @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] if block ~ ~ ~ barrier run setblock ~ ~ ~ air