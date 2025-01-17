# Debug: Display visual feedback
execute if data storage lumenfuchs:flags { debug_mode: 1b } run particle end_rod ~ ~2 ~ 0.1 0.1 0.1 0.1 12 force


# Check if position is valid
execute if predicate lumenfuchs:block/light_dangerous if predicate lumenfuchs:random/10 \
		unless block ~ ~-1 ~ #lumenfuchs:transparent if block ~ ~ ~ #lumenfuchs:transparent if block ~ ~1 ~ #lumenfuchs:transparent \
		run tag @s add lumenfuchs.dummy_spawn.summon_dummy

# Ignore if failed
execute unless entity @s[tag=lumenfuchs.dummy_spawn.summon_dummy] run return run kill @s[type=#lumenfuchs:technical]

# Ignore if Dummy already exists
execute if entity @n[type=interaction, tag=lumenfuchs.entity.dummy, distance=..512] run return run kill @s[type=#lumenfuchs:technical]


# Debug: Notify success
execute if data storage lumenfuchs:flags { debug_mode: 1b } run say Summoned

# Reset spawning timer
scoreboard players reset @a[scores={ lumenfuchs.dummy=1.. }] lumenfuchs.dummy


# Apply Darkness
effect give @a[distance=..32] darkness 12 0 true

# Display audiovisual feedback
particle large_smoke ~ ~0.5 ~ 0.1 0.2 0.1 0.05 24
playsound ambient.cave hostile @a[distance=..32] ~ ~ ~ 1.5 0.8 0.5


# Summon Dummy
function lumenfuchs:dummy/summon

# Remove self
kill @s[type=#lumenfuchs:technical]