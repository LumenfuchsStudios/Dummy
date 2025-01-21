## * AydenTFoxx @ 2025-01-11 .. 2025-01-13
## * 
## * Initializes features required for the proper functioning of the datapack.


## # INIT

# Wait until Player is loaded
execute unless entity @e[type=player] run return run schedule function the_stall:load 20t

# Display join message
execute unless data storage lumenfuchs:flags { the_stall: { first_load_true: true } } run tellraw @a { "translate": "%s has joined the world.", "color": "yellow", "with": [ { "selector": "@p" } ], "hoverEvent": { "action": "show_text", "contents": [ "First time here? Try running ", { "text": "/function the_stall:help", "color": "yellow" }, " for a start!" ] }, "clickEvent": { "action": "suggest_command", "value": "/trigger the_stall.settings set 200" } }

execute if data storage lumenfuchs:flags { the_stall: { first_load_true: true } } unless data storage lumenfuchs:flags { first_load: true } run tellraw @a { "text": "Hello again.", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": [ "Settings and Stall summoning at ", { "text": "/function the_stall:help", "color": "yellow" } ] }, "clickEvent": { "action": "suggest_command", "value": "/function the_stall:help" }  }

# Grant advancement
advancement grant @a[advancements={ lumenfuchs:root=false }] only lumenfuchs:root


## # SCOREBOARDS

## Settings (the_stall)
# A trigger objective for managing the datapack's settings.
scoreboard objectives add the_stall.settings trigger { "text": "Settings", "color": "aqua", "obfuscated": true }


## DEFAULT VALUES

# Enable Settings trigger for all players
scoreboard players enable @a the_stall.settings


## # FLAGS

# Initialize settings
execute unless data storage lumenfuchs:flags { the_stall: { first_load: true } } run function the_stall:load_settings

# Set first load
execute unless data storage lumenfuchs:flags { the_stall: { first_load: true } } run data modify storage lumenfuchs:flags the_stall.first_load_true set value true
execute unless data storage lumenfuchs:flags { the_stall: { first_load: true } } run data modify storage lumenfuchs:flags the_stall.first_load set value true