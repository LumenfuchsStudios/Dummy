## * AydenTFoxx @ 2025-01-17 .. 2025-04-02
## * 
## * Gives the player a Dummy Spawn Egg.


give @s wither_skeleton_spawn_egg[ \
	item_name='{ "translate": "item.lumenfuchs.dummy_spawn_egg", "fallback": "Dummy Spawn Egg" }', \
	lore=[ '{ "translate": "item.lumenfuchs.dummy_spawn_egg.lore", "fallback": "A vile creature lies within." }' ], \
	rarity="uncommon", \
	enchantment_glint_override=true, \
	entity_data={ id: "marker", Tags: [ "lumenfuchs.dummy.vessel" ] } \
]