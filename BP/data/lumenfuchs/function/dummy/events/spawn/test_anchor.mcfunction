## * AydenTFoxx @ 2025-01-17 .. 2025-03-04
## * 
## * Verifies if the given anchor's position is valid for spawning. If true, the Dummy is summoned.
## ? All checks may be overridden by adding the "lumenfuchs.dummy_spawn.force_spawn" tag to the anchor itself.


## VERIFY

# Debug: Display visual feedback
execute if data storage lumenfuchs:flags { debug_mode: 1b } run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 12 force


# Ignore if Dummy already exists
execute if entity @n[type=interaction, tag=lumenfuchs.entity.dummy, distance=..512] unless entity @s[tag=lumenfuchs.dummy_spawn.force_spawn] run return run kill @s[type=#dummy_lib:technical]

# Ignore if block is under skylight (and spawn_under_skylight is disabled)
execute unless data storage lumenfuchs:flags { dummy: { spawn_under_skylight: true } } unless entity @s[tag=lumenfuchs.dummy_spawn.force_spawn] \
		if predicate dummy_lib:block/is_under_skylight run return run kill @s[type=#dummy_lib:technical]


# Check if position is valid
execute if predicate dummy_lib:block/light/low unless entity @p[gamemode=!spectator, distance=..8] \
		unless block ~ ~-1 ~ #dummy_lib:transparent if block ~ ~ ~ #dummy_lib:transparent if block ~ ~1 ~ #dummy_lib:transparent \
		run tag @s add lumenfuchs.dummy_spawn.summon_dummy

# Ignore if failed
execute if entity @s[tag=!lumenfuchs.dummy_spawn.summon_dummy, tag=!lumenfuchs.dummy_spawn.force_spawn] run return run kill @s[type=#dummy_lib:technical]


## SUCCESS

# Debug: Notify success
execute if data storage lumenfuchs:flags { debug_mode: 1b } run say Summoned

# Reset players' spawning timer
scoreboard players reset @a[scores={ dummy_lib.dummy=1.. }, distance=..128] dummy_lib.dummy


# Apply Darkness
effect give @a[distance=..32] darkness 8 0 true

# Display audiovisual feedback
particle large_smoke ~ ~0.5 ~ 0.1 0.2 0.1 0.05 24
playsound ambient.nether_wastes.mood master @p[gamemode=!spectator, distance=..64] ~ ~ ~ 2 0.5 0.5


# Summon Dummy
function lumenfuchs:dummy/summon

# Remove self
kill @s[type=#dummy_lib:technical]