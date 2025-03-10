## * AydenTFoxx @ 2025-01-11 .. 2025-03-02
## * 
## * Initializes features required for the proper functioning of the datapack.


## # INIT

# Wait until Player is loaded
execute unless entity @n[type=player] run return run schedule function lumenfuchs:load 20t

# Display join message
execute unless data storage lumenfuchs:flags { first_load_true: true } run tellraw @a { "translate": "lumenfuchs.intro.init", "color": "yellow", "with": [ { "selector": "@p" } ], "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.intro.init.info", "fallback": "First time here? Try running %s for a start!", "with": [ { "text": "/function lumenfuchs:help", "color": "yellow" } ] } }, "clickEvent": { "action": "suggest_command", "value": "/trigger lumenfuchs.settings set 200" } }

execute if data storage lumenfuchs:flags { first_load_true: true } unless data storage lumenfuchs:flags { first_load: true } run tellraw @a { "translate": "lumenfuchs.intro.reload", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.intro.reload.info", "fallback": "Your datapack got updated! Click here for a list of latest changes." } }, "clickEvent": { "action": "open_url", "value": "https://github.com/LumenfuchsStudios/Dummy/blob/main/CHANGELOG.md" } }

# Grant advancement
advancement grant @a[advancements={ lumenfuchs:root=false }] only lumenfuchs:root


## # SCOREBOARDS

## Settings (lumenfuchs)
# A trigger objective for managing the datapack's settings.
scoreboard objectives add lumenfuchs.settings trigger { "text": "Settings", "color": "aqua", "obfuscated": true }


## DEFAULT VALUES

# Initialize custom tick rate
execute unless score #lumenfuchs_tick_rate_a dummy_lib.dummy matches 1.. \
        run scoreboard players set #lumenfuchs_tick_rate_a dummy_lib.dummy 1

execute unless score #lumenfuchs_tick_rate_b dummy_lib.dummy matches 1.. \
        run scoreboard players set #lumenfuchs_tick_rate_b dummy_lib.dummy 2


# Enable Settings trigger for all players
scoreboard players enable @a lumenfuchs.settings


## # FLAGS

# Set datapack latest version
# 1 | 1.0.0
# 2 | 1.1.0
# 3 | 1.1.1
# 4 | 1.2.0
# 5 | 1.2.1 - 1.2.2
# 6 | 1.3.0 - 1.3.1
# 7 | 1.4.0
scoreboard players set #lumenfuchs_dummy.target_version dummy_lib.dummy 7

# Set current version to latest
execute unless score #lumenfuchs_dummy.current_version dummy_lib.dummy matches 1.. unless data storage lumenfuchs:flags { first_load: true } \
        run scoreboard players operation #lumenfuchs_dummy.current_version dummy_lib.dummy = #lumenfuchs_dummy.target_version dummy_lib.dummy


# Update to latest version
execute unless score #lumenfuchs_dummy.current_version dummy_lib.dummy = #lumenfuchs_dummy.target_version dummy_lib.dummy \
        run return run function lumenfuchs:upgrade_version


# Initialize settings
execute unless data storage lumenfuchs:flags { first_load: true } run function lumenfuchs:load_settings

# Set first load
execute unless data storage lumenfuchs:flags { first_load: true } run data modify storage lumenfuchs:flags first_load_true set value true
execute unless data storage lumenfuchs:flags { first_load: true } run data modify storage lumenfuchs:flags first_load set value true