## * AydenTFoxx @ 2025-01-15 .. 2025-02-14
## * 
## * Display the main settings panel.


# Intro
execute unless data storage lumenfuchs:flags first_load_settings run tellraw @s [ { "translate": "lumenfuchs.settings.menu_intro.i", "fallback": "--> %s presents...", "color": "aqua", "with": [ { "text": "Lumenfuchs Studios", "color": "yellow", "bold": true, "clickEvent": { "action": "open_url", "value": "https://github.com/LumenfuchsStudios" } } ] }, "\n", { "translate": "lumenfuchs.settings.menu_intro.ii", "fallback": "    [ %s ]\n", "color": "black", "with": [ { "text": "The Dummy", "color": "black", "obfuscated": true } ] } ]
execute unless data storage lumenfuchs:flags first_load_settings run data modify storage lumenfuchs:flags first_load_settings set value true

# Menu
tellraw @s [ "", \
	{ "text": "----+{ ", "color": "dark_gray" }, \
	{ "translate": "lumenfuchs.settings.menu_title", "fallback": "Settings: ", "color": "gray" }, \
	{ "text": "Dummy", "color": "gold" }, \
	{ "text": " }+----", "color": "dark_gray" }, "\n\n", \
	{ "text": "* ", "color": "dark_purple" }, \
	{ "translate": "lumenfuchs.settings.category_appearance.title", "fallback": "Appearance...", "color": "blue", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.category_appearance.description", "fallback": "Change how the Dummy is rendered." } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2" } }, "\n\n", \
	{ "text": "* ", "color": "dark_purple" }, \
	{ "translate": "lumenfuchs.settings.category_ambience.title", "fallback": "Ambience...", "color": "blue", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.category_ambience.description", "fallback": "Change the Dummy's ambient effects." } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3" } }, "\n", \
	{ "text": "* ", "color": "dark_purple" }, \
	{ "translate": "lumenfuchs.settings.category_behavior.title", "fallback": "Behavior...", "color": "blue", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.category_behavior.description", "fallback": "Change the Dummy's behaviors." } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 4" } }, "\n\n", \
	{ "text": "* ", "color": "dark_purple" }, \
	{ "translate": "lumenfuchs.settings.category_misc.title", "fallback": "Misc...", "color": "blue", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.settings.category_misc.description", "fallback": "Extra settings and storage management." } }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 5" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]