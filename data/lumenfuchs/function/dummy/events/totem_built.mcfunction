# Revoke trigger
advancement revoke @s only lumenfuchs:summon_dummy


# Attempt summoning
execute anchored eyes positioned ^ ^ ^1 unless function lumenfuchs:dummy/events/totem_summon \
		positioned ^ ^ ^1 unless function lumenfuchs:dummy/events/totem_summon \
		positioned ^ ^ ^1 run function lumenfuchs:dummy/events/totem_summon