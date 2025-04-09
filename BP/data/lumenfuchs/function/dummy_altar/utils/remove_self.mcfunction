## * AydenTFoxx @ 2025-04-07
## * 
## * Removes the Dummy Altar, dropping itself as a custom item.


# Remove Respawn Anchor
execute if entity @s[type=interaction] positioned ~-0.1 ~ ~-0.1 align xyz \
        run kill @n[type=block_display, tag=lumenfuchs.entity.dummy_altar, distance=..1]

# Remove Barrier
execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air


# Display audiovisual feedback
playsound block.beacon.deactivate block @a[distance=..16] ~ ~0.5 ~ 1 0.8

particle explosion ~ ~0.5 ~ 0.0 0.0 0.0 1 1 force
particle poof ~ ~ ~ 0.05 0.05 0.05 0.1 12 force

particle portal ~ ~ ~ 0.0 0.0 0.0 1 20
particle enchant ~ ~1 ~ 0.0 0.0 0.0 1 20


# Drop item
loot spawn ~ ~ ~ loot lumenfuchs:block/dummy_altar

# Remove self
return run kill @s[type=#dummy_lib:technical]