# Usage

The datapack adds a single new "entity" to the game: the Dummy.

## Summoning

To obtain a Dummy, there are three methods:

1. Build a T-shaped, 4-block structure with a black-dyed material (concrete, terracotta, wool, etc.), then put a Glowstone Block at its top middle block (forming a plus sign -- akin to summoning an Iron Golem)
2. Run the function `/function lumenfuchs:dummy/summon`.
3. ~~If the Dummy's "Natural Spawning" setting is enabled, there is a chance for it to spawn in any area with light below 3.~~ \[TBA\]

## Stats

The Dummy has the following stats by default:

- 8 (![heart](https://minecraft.wiki/images/Heart_(icon).png)![heart](https://minecraft.wiki/images/Heart_(icon).png)![heart](https://minecraft.wiki/images/Heart_(icon).png)![heart](https://minecraft.wiki/images/Heart_(icon).png)) health
- 2 (![heart](https://minecraft.wiki/images/Heart_(icon).png)) attack damage (contact)
- Moves 0.1 blocks / tick.

- Follow range of 512 blocks (configurable)
- Staring distance of 128 blocks (configurable)
- "Attacking" distance of 4 blocks (configurable)
  - This is separate from the range of contact damage, which is always 0.5 blocks.

## Interaction

The Dummy has the following actions when near a player:

- When within *staring distance*, it will stare that player, turning its head and body towards its target.
- When within *stalking distance*, it'll walk towards the nearest player, ignoring blocks and entities in the way.
  - The Dummy will stop at a *stalking threshold (default 8 blocks), and will not move until being farther than this distance to the player.
  - If within *staring distance* and being looked at, the Dummy will cease to move, but will still turn towards the player.
- If a player is within *attacking distance* to the Dummy, it will raise its arm, then cause the following effects:
  - 4 seconds of Darkness II;
  - 1.5 seconds of thunderous weather;
  - Hostile and neutral mobs will target the nearest player;
  - Lightning Bolts within a 128-block radius will be teleported to the nearest player.
- If any entity is within 0.5 blocks to the Dummy, it receives 2 (![heart](https://minecraft.wiki/images/Heart_(icon).png)) thorns damage and is knocked back.

The Dummy has the following reactions to external stimuli:

- If hit by a player, the Dummy receives 1 damage and is knocked back.
- If its health reaches 0, the Dummy stops in place, applies Darkness to all nearby players, and disappears after a couple seconds.
- If there is no block under its feet, it falls at an increasing pace, up to a terminal velocity of 1 block / tick.
- If its standing block is not within the "transparent" block tag, the Dummy will move upwards at a pace of 0.1 blocks / tick.
  - If said block is a Slime Block, the Dummy is launched upwards a few blocks, then falls back to the ground.

## Settings

All settings from the datapack are stored within the data storage `lumenfuchs:flags`.

For a helpful panel containing all available settings, run `/function lumenfuchs:_settings`

### Appearance

#### dummy.material

> - Determines the texture of the Dummy.
> - Default: `black_concrete`

#### dummy.material_hurt

> - Determines the texture of the Dummy when hurt.
> - Default: `red_concrete`

### Ambience

#### dummy.ambience_presence

> - Determines the sound played by the Dummy to all players within staring distance.
> - Default: `block.stone.break`

#### dummy.ambience_target

> - Determines the sound played by the Dummy to the player it is currently targeting.
> - Default: `ambient.soul_sand_valley.additions`

### Behavior

#### dummy.stare_player

> - Determines if the Dummy should stare nearby players.
> - Default: `true`

#### dummy.stare_player_distance

> - Determines the distance at which the Dummy can stare players, measured in blocks.
> - Default: `128`

#### dummy.stalk_player

> - Determines if the Dummy should walk towards the nearest player.
> - Default: `true`

#### dummy.stalk_player_distance

> - Determines the distance at which the Dummy can stalk players, measured in blocks.
>   - NOTE: In Singleplayer, this also heavily depends on the client's simulation distance, unless "Forceload Chunks" is enabled.
> - Default: `512`

#### dummy.stalk_player_threshold

> - Determines the distance at which the Dummy will stop walking when approaching a player.
> - Default: `8`

#### dummy.freeze_when_stared

> - Determines if the Dummy should stop walking when looked at within staring distance.
> - Default: `true`

#### dummy.harm_on_touch

> - Determines if the Dummy should apply damage to entities within the same block as itself.
> - Default: `true`

#### dummy.attack_player

> - Determines if the Dummy should perform its "attack" behavior.
> - Default: `true`

#### dummy.attack_player_distance

> - Determines how close to a player the Dummy must be in order to perform its ability.
>   - NOTE: For the best experience, `attack_player_distance` should be *lower* than `stalk_player_threshold`.
> - Default: `4`

### Extras

#### dummy.forceload_chunks

> - Determines if the Dummy will force-load chunks around itself when unloaded.
>   - NOTE: May cause performance issues. Disabled by default over concerns with potentially faster SSD wear out.
> - Default: `false`

#### dummy.natural_spawning

> - Determines if the Dummy can spawn naturally in particularly dark places.
>   - NOTE: Has no effect (yet); Nonetheless, balance and tolerance may be considered before enabling this.
> - Default: `false`
