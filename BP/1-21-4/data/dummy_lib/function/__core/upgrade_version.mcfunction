## * AydenTFoxx @ 2025-01-28 .. 2025-04-02
## * 
## * Upgrades the datapack's version to the latest, then forces a "reload" of its settings.


## # COMPATIBILITY FIXES

## Set "current version" to 1 if none is present
execute unless score #dummy_lib.current_version dummy_lib.dummy matches 1.. run scoreboard players set #dummy_lib.current_version dummy_lib.dummy 1


## # UPGRADE

## DEBUG: Display feedback
execute if data storage dummy_lib:flags { debug_mode: true } run tellraw @a [{ "text": "[" }, { "text": "DummyLib", "color": "yellow", "bold": true, "clickEvent": { "action": "open_url", "value": "https://modrinth.com/datapack/lumenfuchs-dummy" }}, { "translate": "] Updating datapack version to %s.", "with": [ { "score": { "name": "#dummy_lib.target_version", "objective": "dummy_lib.dummy" } } ] }]

# Remove first load flag
data remove storage dummy_lib:flags first_load


# Update to latest
scoreboard players operation #dummy_lib.current_version dummy_lib.dummy = #dummy_lib.target_version dummy_lib.dummy

# Reload datapack
function dummy_lib:__core/load