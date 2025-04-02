## * AydenTFoxx @ 2025-03-05 .. 2025-04-01
## * 
## * Executes an AoE Dummy blast a few blocks ahead of the player.
## ? This variant deals damage to all creatures around the target position.


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_blast/release_b


# Damage mob
execute anchored eyes positioned ^ ^ ^4 unless entity @n[type=interaction, tag=dummy_lib.entity, distance=..3] \
		as @e[type=!#dummy_lib:technical, type=!player, distance=..3, limit=4] run damage @s 8 sonic_boom by @p

# Damage Dummy
execute anchored eyes positioned ^ ^ ^4 as @n[type=interaction, tag=dummy_lib.entity, distance=..3, limit=3] at @s \
		run function dummy_lib:events/hit_by_cleanser


# Display visual feedback (user)
particle soul_fire_flame ~ ~1.2 ~ 0.3 0.5 0.3 0.06 16 force

# Display visual feedback (target)
execute anchored eyes positioned ^ ^ ^4 run particle flash ~ ~ ~ 0.0 0.0 0.0 1 1 force


# Display visual feedback (target, success)
execute anchored eyes positioned ^ ^ ^4 unless entity @n[type=interaction, tag=dummy_lib.entity, distance=..3] \
		at @e[type=!#dummy_lib:technical, type=!player, distance=..3] run particle large_smoke ~ ~0.8 ~ 0.15 0.3 0.15 0.05 16

# Display visual feedback (target, fail)
execute anchored eyes positioned ^ ^ ^4 unless entity @n[type=interaction, tag=dummy_lib.entity, distance=..3] \
		at @e[type=!#dummy_lib:technical, type=!player, distance=..3] run particle explosion ~ ~1 ~ 0.0 0.0 0.0 1 1 force


# Play audio feedback
playsound entity.warden.sonic_boom master @a[distance=..32] ~ ~ ~ 1 0.8 0.1
playsound ambient.crimson_forest.additions master @a[distance=..32] ~ ~ ~ 0.5 1 0.1


# Spawn Evoker Fangs
execute anchored eyes positioned ^ ^-1 ^4 align y if block ~ ~ ~ #dummy_lib:transparent \
		unless entity @s[distance=..1] run summon evoker_fangs ~0.5 ~ ~0.5

execute anchored eyes positioned ^ ^-1 ^4 align y if block ~ ~ ~ #dummy_lib:transparent \
		unless entity @s[distance=..1] run summon evoker_fangs ~-0.5 ~ ~0.5

execute anchored eyes positioned ^ ^-1 ^4 align y if block ~ ~ ~ #dummy_lib:transparent \
		unless entity @s[distance=..1] run summon evoker_fangs ~-0.5 ~ ~-0.5

execute anchored eyes positioned ^ ^-1 ^4 align y if block ~ ~ ~ #dummy_lib:transparent \
		unless entity @s[distance=..1] run summon evoker_fangs ~0.5 ~ ~-0.5

# Remove Purity
execute if predicate dummy_lib:random/20 run function lumenfuchs:dummy/utils/revoke_purity with entity @s

execute anchored eyes positioned ^ ^ ^4 at @e[type=!#dummy_lib:technical, type=!player, distance=..3, limit=4] at @s if predicate dummy_lib:random/25 \
	run function lumenfuchs:dummy/utils/revoke_purity with entity @s