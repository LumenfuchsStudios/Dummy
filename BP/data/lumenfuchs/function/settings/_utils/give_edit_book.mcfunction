## * AydenTFoxx @ 2025-01-18 .. 2025-04-01
## * 
## * Gives the player a Settings Book tied to the given setting.


$give @s writable_book[ \
	item_name={ "translate": "item.lumenfuchs.settings_book", "fallback": "Write me!" }, \
	lore=[ { "translate": "item.lumenfuchs.settings_book.lore", "fallback": "Editing setting \"%s\"", "italic": false, "color": "gray", "with": [ { "text": "dummy.$(setting)", "italic": false, "color": "white" } ] } ], \
	rarity=uncommon, \
	enchantment_glint_override=true, \
	custom_data={ \
		lumenfuchs.items.settings_book: true, \
		lumenfuchs.settings_dummy: { setting: $(setting) } \
	} \
]