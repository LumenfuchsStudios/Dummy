## * AydenTFoxx @ 2025-01-15 .. 2025-01-27
## * 
## * Loads all settings for the datapack at their default values.


## * DUMMY

##? Appearance

## (dummy.material) | Default: "black_concrete"
# The default material for the Dummy entity.
execute unless data storage lumenfuchs:flags dummy.material \
        run data modify storage lumenfuchs:flags dummy.material set value "black_concrete"

## (dummy.material_hurt) | Default: "red_concrete"
# The default material for the Dummy entity's hurt state.
execute unless data storage lumenfuchs:flags dummy.material_hurt \
        run data modify storage lumenfuchs:flags dummy.material_hurt set value "red_concrete"


##? Behavior

#? Misc.

## (dummy.forceload_chunks) | Default: OFF
# Forceloads the chunk at the Dummy entity's position.
execute unless data storage lumenfuchs:flags dummy.forceload_chunks run data modify storage lumenfuchs:flags dummy.forceload_chunks set value false

## (dummy.natural_spawning) | Default: OFF
# Allows the Dummy entity to spawn naturally in complete darkness; Highly experimental.
execute unless data storage lumenfuchs:flags dummy.natural_spawning run data modify storage lumenfuchs:flags dummy.natural_spawning set value false

## (dummy.spawn_under_skylight) | Default: ON
# Allows the Dummy entity to spawn in blocks with direct view to the sky.
execute unless data storage lumenfuchs:flags dummy.spawn_under_skylight run data modify storage lumenfuchs:flags dummy.spawn_under_skylight set value true

## (dummy.drop_loot) | Default: ON
# Allows the Dummy entity to drop random items upon death.
execute unless data storage lumenfuchs:flags dummy.drop_loot run data modify storage lumenfuchs:flags dummy.drop_loot set value true


#? Weirdness

## (dummy.stare_player) | Default: ON
# The Dummy will always stare the nearest player, or look forwards if the player is too far away. Does not influence the Dummy's stalking range.
execute unless data storage lumenfuchs:flags dummy.stare_player run data modify storage lumenfuchs:flags dummy.stare_player set value true

## (dummy.stare_player_distance) | Default: 128 (8 chunks)
# The distance at which the Dummy will stare the nearest player, in blocks.
execute unless data storage lumenfuchs:flags dummy.stare_player_distance run data modify storage lumenfuchs:flags dummy.stare_player_distance set value 128


## (dummy.stalk_player) | Default: ON
# The Dummy will constantly walk towards the nearest player's position.
execute unless data storage lumenfuchs:flags dummy.stalk_player run data modify storage lumenfuchs:flags dummy.stalk_player set value true

## (dummy.stalk_player_distance) | Default: 512 (32 chunks)
# The distance at which the Dummy will follow nearby players, in blocks. Actual distance depends on the player's simulation distance.
execute unless data storage lumenfuchs:flags dummy.stalk_player_distance run data modify storage lumenfuchs:flags dummy.stalk_player_distance set value 512

## (dummy.stalk_player_threshold) | Default: 8
# The max distance at which the Dummy will approach a player, in blocks. Should be preferably higher than its attack distance.
execute unless data storage lumenfuchs:flags dummy.stalk_player_threshold run data modify storage lumenfuchs:flags dummy.stalk_player_threshold set value 8


## (dummy.freeze_when_stared) | Default: ON
# The Dummy will not walk towards the player while being looked at.
execute unless data storage lumenfuchs:flags dummy.freeze_when_stared run data modify storage lumenfuchs:flags dummy.freeze_when_stared set value true


#? Hostility

## (dummy.harm_on_touch) | Default: ON
# Mobs who touch the Dummy will take 2 (1 heart) thorns damage.
execute unless data storage lumenfuchs:flags dummy.harm_on_touch run data modify storage lumenfuchs:flags dummy.harm_on_touch set value true


## (dummy.attack_player) | Default: ON
# Enables the Dummy's ability to perform its "attack" ability when near a player.
execute unless data storage lumenfuchs:flags dummy.attack_player run data modify storage lumenfuchs:flags dummy.attack_player set value true

## (dummy.attack_player_distance) | Default: 4
# The distance at which the Dummy may perform its "attack" ability, in blocks. Should be preferably lower than its stalk threshold.
execute unless data storage lumenfuchs:flags dummy.attack_player_distance run data modify storage lumenfuchs:flags dummy.attack_player_distance set value 4


#? Ambience

## (dummy.ambience_presence) | Default: "block.stone.break"
# The ambient sound played occasionally by the Dummy to players within staring distance.
execute unless data storage lumenfuchs:flags dummy.ambience_presence run data modify storage lumenfuchs:flags dummy.ambience_presence set value "block.stone.break"

## (dummy.ambience_target) | Default: "ambient.soul_sand_valley.additions"
# The ambient sound played by the Dummy to the player it is currently following.
execute unless data storage lumenfuchs:flags dummy.ambience_target run data modify storage lumenfuchs:flags dummy.ambience_target set value "ambient.soul_sand_valley.additions"