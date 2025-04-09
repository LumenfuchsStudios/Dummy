## * AydenTFoxx @ 2025-04-05 .. 2025-04-09
## * 
## * Lowers the Dummy Altar's ability cooldown.

# Does not impact one's usual rate of birthdays


# Display audiovisual feedback
execute as @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] at @s if score @s dummy_lib.dummy matches 1.. \
        run particle end_rod ~ ~1 ~ 0.05 0.05 0.05 0.08 8

execute as @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] at @s if score @s dummy_lib.dummy matches 1.. \
        run playsound block.respawn_anchor.charge block @a[distance=..16] ~ ~0.5 ~ 0.8 0.8 0.1

# Reduce cooldown
execute as @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] if score @s dummy_lib.dummy matches 1.. \
        run scoreboard players remove @s dummy_lib.dummy 50


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_altar/reduce_cooldown