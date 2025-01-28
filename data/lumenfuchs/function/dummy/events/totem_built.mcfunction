## * AydenTFoxx @ 2025-01-15
## * 
## * Attempts to summon a Dummy where its totem is built.


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/summon_dummy


# Attempt summoning
execute anchored eyes positioned ^ ^ ^1 unless function lumenfuchs:dummy/events/totem_summon \
		positioned ^ ^ ^1 unless function lumenfuchs:dummy/events/totem_summon \
		positioned ^ ^ ^1 run function lumenfuchs:dummy/events/totem_summon