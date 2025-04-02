## * AydenTFoxx @ 2025-01-18 .. 2025-04-01
## * 
## * Prompts the user to change the given setting to the inputted value.


# Ignore if book is empty
execute unless data entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw run return fail

# Display message feedback
$tellraw @s [ \
	{ \
		"translate": "lumenfuchs.settings.confirm_edit", \
		"fallback": "* Change %s to %s?", \
		"color": "yellow", \
		"with": [ \
			{ "text": "dummy.$(setting)", "color": "gray" }, \
			{ "entity": "@s", "nbt": "SelectedItem.components.minecraft:writable_book_content.pages[0].raw", "color": "aqua", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.settings.confirm_edit_info", "fallback": "Click to write to storage." } }, "click_event": { "action": "run_command", "command": "/trigger lumenfuchs.settings set 300" } } \
		] \
	} \
]