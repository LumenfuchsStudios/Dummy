## * AydenTFoxx @ 2025-01-27 .. 2025-04-02
## * 
## * Gives the player a Seeker Spawn Egg.


give @s endermite_spawn_egg[ \
	item_name='{ "translate": "item.lumenfuchs.seeker_spawn_egg", "fallback": "Seeker Spawn Egg" }', \
	lore=[ '{ "translate": "item.lumenfuchs.seeker_spawn_egg.lore", "fallback": "A pumpkin lies inside." }' ], \
	rarity="rare", \
	enchantment_glint_override=true, \
	entity_data={ id: "marker", Tags: [ "lumenfuchs.seeker.vessel" ] } \
]