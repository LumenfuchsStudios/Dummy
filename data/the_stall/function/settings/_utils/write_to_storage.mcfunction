# Fail if player is not holding the correct Settings Book
$execute unless data entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_stall"{ setting: $(setting) } \
		run return run tellraw @s ["", { "text": "Please hold the ", "color": "red" }, { "text": "stall.$(setting)", "color": "gray" }, { "text": " book for saving this setting!", "color": "red" } ]


# Write to storage
$data modify storage dummy_lib:flags the_stall.$(setting) set from entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw

# Display message feedback
$tellraw @s [ \
	{ "text": "# Set ", "color": "green" }, \
	{ "text": "the_stall.$(setting)", "color": "gray" }, \
	{ "text": " to ", "color": "green" }, \
	{ "storage": "dummy_lib:flags", "nbt": "the_stall.$(setting)", "color": "aqua" }, \
	{ "text": ".", "color": "green" } \
]

# Remove book
#clear @s writable_book[custom_data={ lumenfuchs.settings_stall: { setting: $(setting) } }] 1