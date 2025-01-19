# Fail if player is not holding the correct Settings Book
$execute unless data entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_dummy"{ setting: $(setting) } \
		run return run tellraw @s { "text": "Please hold the book for saving this setting!", "color": "red" }


# Write to storage
$data modify storage lumenfuchs:flags dummy.$(setting) set from entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw

# Display message feedback
$tellraw @s [ \
	{ "text": "# Set ", "color": "green" }, \
	{ "text": "dummy.$(setting)", "color": "gray" }, \
	{ "text": " to ", "color": "green" }, \
	{ "storage": "lumenfuchs:flags", "nbt": "dummy.$(setting)", "color": "aqua" }, \
	{ "text": ".", "color": "green" } \
]

# Remove book
#clear @s writable_book[custom_data={ lumenfuchs.settings_dummy: { setting: $(setting) } }] 1