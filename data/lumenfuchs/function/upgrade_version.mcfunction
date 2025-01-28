## * AydenTFoxx @ 2025-01-28
## * 
## * Upgrades the datapack's version to the latest, then forces a "reload" of its settings.


# Remove first load flag
data remove storage lumenfuchs:flags first_load

# DEBUG: Display feedback
execute if data storage lumenfuchs:flags { debug_mode: true } run tellraw @a [{ "text": "[" }, { "text": "The Dummy", "bold": true, "hoverEvent": { "action": "show_text", "contents": [{ "text": "Datapack: " }, { "text": "YNHZRFXN", "color": "black", "obfuscated": true }] } }, { "translate": "] Updating datapack version to %s.", "with": [ { "score": { "name": "#lumenfuchs_dummy.target_version", "objective": "lumenfuchs.dummy" } } ] }]


# Update to latest
scoreboard players operation #lumenfuchs_dummy.current_version lumenfuchs.dummy = #lumenfuchs_dummy.target_version lumenfuchs.dummy

# Reload datapack
function lumenfuchs:load