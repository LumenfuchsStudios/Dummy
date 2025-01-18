$give @s writable_book[ \
	item_name='{ "text": "Write me!" }', \
	lore=[ '{ "text": "Editing setting \\"dummy.$(setting)\\"", "italic": false, "color": "gray" }' ], \
	rarity=uncommon, \
	enchantment_glint_override=true, \
	custom_data={ \
		lumenfuchs.items.settings_book: true, \
		lumenfuchs.settings_dummy: { setting: $(setting) } \
	} \
]