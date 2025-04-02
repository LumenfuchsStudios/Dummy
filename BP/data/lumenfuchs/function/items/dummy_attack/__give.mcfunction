## * AydenTFoxx @ 2025-03-05 .. 2025-04-01
## * 
## * Gives the player a Void Shard, a condensed mass of powerful darkness.


give @s enchanted_book[ \
	stored_enchantments={ vanishing_curse: 1 }, \
	consumable={ animation: "bow", consume_seconds: 2.4, has_consume_particles: false, on_consume_effects: [ { type: "play_sound", sound: "ambient.cave" } ], sound: "ambient.basalt_deltas.mood" }, \
	custom_data={ lumenfuchs.items.dummy_attack: true }, \
	item_name={ "translate": "item.lumenfuchs.dummy_attack", "fallback": "Void Shard" }, \
	item_model="echo_shard", \
	lore=[ { "translate": "item.lumenfuchs.dummy_attack.lore", "fallback": "\"A shard of the Dummy's grim power.\"", "italic": false, "color": "gray" } ], \
	max_stack_size=16, \
	rarity="rare", \
	use_cooldown={ seconds: 0.8, cooldown_group: "lumenfuchs:dummy.attack" } \
]