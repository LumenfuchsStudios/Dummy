## * AydenTFoxx @ 2025-04-09
## * 
## * Gives the player a Dummy Locator, also known as a Dummy Map.

#? Note: Incomplete feature; Works in-game but does not meet proper quality standards for a release version.


give @s coal[ \
    consumable={ animation: "bow", consume_seconds: 300, has_consume_particles: false, sound: "ambient.nether_wastes.mood", on_consume_effects: [ { type: "play_sound", sound: "entity.generic.explode" } ] }, \
    item_model="filled_map", \
    item_name='{ translate: "item.lumenfuchs.dummy_map", "fallback": "Dummy Altar Map" }', \
    rarity="uncommon", \
    enchantment_glint_override=true, \
    custom_data={ lumenfuchs.items.dummy_map: true } \
]