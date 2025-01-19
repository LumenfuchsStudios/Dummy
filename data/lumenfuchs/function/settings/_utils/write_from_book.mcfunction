# Ignore if book is empty
execute unless data entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw run return fail

# Display message feedback
$tellraw @s [ \
	{ "text": "* Change ", "color": "yellow" }, \
	{ "text": "dummy.$(setting)", "color": "gray" }, \
	{ "text": " to ", "color": "yellow" }, \
	{ "entity": "@s", "nbt": "SelectedItem.components.minecraft:writable_book_content.pages[0].raw", "color": "aqua", "hoverEvent": { "action": "show_text", "contents": "Click to write to storage." }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 300" } }, \
	{ "text": "?", "color": "yellow" } \
]