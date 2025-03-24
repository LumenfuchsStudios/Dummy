## * AydenTFoxx @ 2025-03-05 .. 2025-03-24
## * 
## * Executes a single-target Dummy blast a few blocks ahead of the player.
## ? This variant deals damage to the closest creature to the target position.


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_blast/release_a


# Damage mob
execute anchored eyes positioned ^ ^ ^4 unless entity @n[type=interaction, tag=dummy_lib.entity, distance=..3] \
		run damage @n[type=!#dummy_lib:technical, distance=..3] 8 sonic_boom by @s

# Damage Dummy
execute anchored eyes positioned ^ ^ ^4 as @n[type=interaction, tag=dummy_lib.entity, distance=..3] at @s \
		run function dummy_lib:events/hit_by_cleanser


# Display visual feedback (user)
particle soul_fire_flame ~ ~1.2 ~ 0.3 0.5 0.3 0.06 16 force

# Display visual feedback (target)
execute anchored eyes positioned ^ ^ ^4 run particle flash ~ ~ ~ 0.0 0.0 0.0 1 1 force


# Display visual feedback (target, success)
execute anchored eyes positioned ^ ^ ^4 unless entity @n[type=interaction, tag=dummy_lib.entity, distance=..3] \
		at @n[type=!#dummy_lib:technical, distance=..3] run particle large_smoke ~ ~0.8 ~ 0.15 0.3 0.15 0.05 16

# Display visual feedback (target, fail)
execute anchored eyes positioned ^ ^ ^4 unless entity @n[type=interaction, tag=dummy_lib.entity, distance=..3] \
		at @n[type=!#dummy_lib:technical, distance=..3] run particle explosion ~ ~1 ~ 0.0 0.0 0.0 1 1 force


# Play audio feedback
playsound entity.warden.sonic_boom master @a[distance=..32] ~ ~ ~ 1 1.2 0.1
playsound ambient.crimson_forest.mood master @a[distance=..32] ~ ~ ~ 0.5 0.8 0.1