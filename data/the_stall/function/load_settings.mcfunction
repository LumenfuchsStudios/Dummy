## * AydenTFoxx @ 2025-01-15
## * 
## * Loads all settings for the datapack at their default values.


## Load dummy_lib's default settings
function dummy_lib:load_settings { namespace: "the_stall" }


##? Behavior

#? Misc.

## (the_stall.spawn_under_skylight) | Default: OFF
# Allows the Stall entity to spawn in blocks with direct view to the sky.
execute unless data storage dummy_lib:flags the_stall.spawn_under_skylight run data modify storage dummy_lib:flags the_stall.spawn_under_skylight set value false


#? Weirdness

## (the_stall.stare_player) | Default: ON
# The Stall will always stare the nearest player, or look forwards if the player is too far away. Does not influence the Stall's stalking range.
execute unless data storage dummy_lib:flags the_stall.stare_player run data modify storage dummy_lib:flags the_stall.stare_player set value true

## (the_stall.stare_player_distance) | Default: 128 (8 chunks)
# The distance at which the Stall will stare the nearest player, in blocks.
execute unless data storage dummy_lib:flags the_stall.stare_player_distance run data modify storage dummy_lib:flags the_stall.stare_player_distance set value 128


## (the_stall.stalk_player) | Default: ON
# The Stall will constantly walk towards the nearest player's position.
execute unless data storage dummy_lib:flags the_stall.stalk_player run data modify storage dummy_lib:flags the_stall.stalk_player set value true

## (the_stall.stalk_player_distance) | Default: 512 (32 chunks)
# The distance at which the Stall will follow nearby players, in blocks. Actual distance depends on the player's simulation distance.
execute unless data storage dummy_lib:flags the_stall.stalk_player_distance run data modify storage dummy_lib:flags the_stall.stalk_player_distance set value 512

## (the_stall.stalk_player_threshold) | Default: 8
# The max distance at which the Stall will approach a player, in blocks. Should be preferably higher than its attack distance.
execute unless data storage dummy_lib:flags the_stall.stalk_player_threshold run data modify storage dummy_lib:flags the_stall.stalk_player_threshold set value 8


## (the_stall.freeze_when_stared) | Default: ON
# The Stall will not walk towards the player while being looked at.
execute unless data storage dummy_lib:flags the_stall.freeze_when_stared run data modify storage dummy_lib:flags the_stall.freeze_when_stared set value true


#? Hostility

## (the_stall.harm_on_touch) | Default: ON
# Mobs who touch the Stall will take 2 (1 heart) thorns damage.
execute unless data storage dummy_lib:flags the_stall.harm_on_touch run data modify storage dummy_lib:flags the_stall.harm_on_touch set value true


## (the_stall.attack_player) | Default: ON
# Enables the Stall's ability to perform its "attack" ability when near a player.
execute unless data storage dummy_lib:flags the_stall.attack_player run data modify storage dummy_lib:flags the_stall.attack_player set value true

## (the_stall.attack_player_distance) | Default: 4
# The distance at which the Stall may perform its "attack" ability, in blocks. Should be preferably lower than its stalk threshold.
execute unless data storage dummy_lib:flags the_stall.attack_player_distance run data modify storage dummy_lib:flags the_stall.attack_player_distance set value 4


#? Ambience

## (the_stall.ambience_presence) | Default: "block.stone.break"
# The ambient sound played occasionally by the Stall to players within staring distance.
execute unless data storage dummy_lib:flags the_stall.ambience_presence run data modify storage dummy_lib:flags the_stall.ambience_presence set value "block.stone.break"

## (the_stall.ambience_target) | Default: "ambient.soul_sand_valley.additions"
# The ambient sound played by the Stall to the player it is currently following.
execute unless data storage dummy_lib:flags the_stall.ambience_target run data modify storage dummy_lib:flags the_stall.ambience_target set value "ambient.soul_sand_valley.additions"