## * AydenTFoxx @ 2025-01-18 .. 2025-02-14
## * 
## * Writes a Settings Book's data to its respective setting's value.


# Fail if player is not holding the correct Settings Book
$execute unless data entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_dummy"{ setting: $(setting) } \
		run return run tellraw @s { "translate": "lumenfuchs.settings.confirm_edit_fail_book", "fallback": "Please hold the %s book for saving this setting!", "color": "red", "with": [ { "text": "dummy.$(setting)", "color": "gray" } ] }


# Write to storage
$data modify storage lumenfuchs:flags dummy.$(setting) set from entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw

# Display message feedback
$tellraw @s [ \
	{ \
		"translate": "lumenfuchs.settings.confirm_edit_success", \
		"fallback": "# Set %s to %s.", \
		"color": "green", \
		"with": [ \
			{ "text": "dummy.$(setting)", "color": "gray" }, \
			{ "storage": "lumenfuchs:flags", "nbt": "dummy.$(setting)", "color": "aqua" } \
		] \
	} \
]

# Remove book
item modify entity @s weapon.mainhand lumenfuchs:remove_item