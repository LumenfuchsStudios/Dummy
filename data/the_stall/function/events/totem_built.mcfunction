## * AydenTFoxx @ 2025-01-15
## * 
## * Attempts to summon a Dummy when its totem is built.


# Revoke trigger
advancement revoke @s only the_stall:internal/summon_stall


# Attempt summoning
execute anchored eyes positioned ^ ^ ^1 unless function the_stall:events/totem_summon \
		positioned ^ ^ ^1 unless function the_stall:events/totem_summon \
		positioned ^ ^ ^1 run function the_stall:events/totem_summon