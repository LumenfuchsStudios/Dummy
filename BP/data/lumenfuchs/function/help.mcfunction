## * AydenTFoxx @ 2025-01-15 .. 2025-04-01
## * 
## * Displays a helpful message for first-time users.


tellraw @s [ "", \
	{ "text": "\" ~~~~~~~~~~~~~~~~~~~~~~~~ \"", "color": "dark_purple" }, "\n\n", \
	{ "translate": "lumenfuchs.help.1", "fallback": "Hello! Welcome to %s,\n a datapack whose main feature is the titular %s,", "with": [ { "text": "Lumenfuchs' Dummy","color": "yellow", "click_event": { "action": "open_url", "url": "https://modrinth.com/datapack/lumenfuchs-dummy" } }, { "text": "Dummy", "bold": true } ] }, "\n", \
	{ "translate": "lumenfuchs.help.2", "fallback": "an \"entity\" whose main hobby is to stalk you around,\n no matter how, no matter where." }, "\n\n", \
	{ "text": "* ", "color": "gold" }, { "translate": "lumenfuchs.help.3_a", "fallback": "To test the creature on your own, click %s.", "color": "gray", "with": [ { "translate": "lumenfuchs.help.click_here", "fallback": "here", "color": "dark_aqua", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.help.3_a_i", "fallback": "Summon Dummy (Requires Cheats!)" } }, "click_event": { "action": "suggest_command", "command": "/function lumenfuchs:dummy/summon" } } ] }, "\n", \
	{ "text": "* ", "color": "gold" }, { "translate": "lumenfuchs.help.3_b", "fallback": "To see all available settings of this datapack, see %s.", "color": "gray", "with": [ { "translate": "lumenfuchs.help.click_here", "fallback": "here", "color": "dark_aqua", "hover_event": { "action": "show_text", "value": { "translate": "lumenfuchs.help.3_b_i", "fallback": "Open Settings" } }, "click_event": { "action": "suggest_command", "command": "/trigger lumenfuchs.settings" } } ] }, "\n\n", \
	{ "text": "\" ~~~~~~~~~~~~~~~~~~~~~~~~ \"", "color": "dark_purple" } \
]