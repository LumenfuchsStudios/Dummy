# Lumenfuchs' Dummy Changelog

Legend:

> ✳️ Meta  
> 🐛 Bugfix  
> ⭐ Feature  
> 🔺 Enhancement  
> 🔧 Technical

## v1.6.1 - Unreleased

### Codename: `Hotfix: ...`[^nocode]

* 🔧 Changed Dummy Altar's activation to no longer be triggered by players in Spectator mode.
* 🔧 Removed `#minecraft:load` and `#minecraft:tick` function tags from 1.21.4 overlay.

## v1.6.0 - 2025-05-10

### Codename: `Old Gods`

* ✳️ Added new "overlay" folder for the 1.21.4-compatible version of the datapack.
  * This overlay will be automatically applied on versions 1.21.2-1.21.4, and ignored otherwise; Essentially, this means all compatible versions will now use the same file! :D
  * The newly-created 1.21.4 branch will be thus deprecated. Oh well.
* 🐛 Fixed bug where the Seeker could not hurt any entities at all.
* ⭐ Added a new naturally-generated structure: the *Dummy Altar*:
  * Generating throughout most of the Overworld, this mysterious structure features a strange block at its center, which activates when approached. When interacted with specific items, it has the ability to directly influence Dummy/Seeker entities around itself.
* 🔺 Reduced the volume of the sound from the Dummy/Seeker's death event.
* 🔺 Changed Seekers to no longer grant Purity scores when killed.
* 🔧 Introduced a new entity tag to indicate an entity should be in a "paralysis" state: `dummy_lib.dummy.paralysis`
* 🔧 Added failsafe to ensure DummyLib entities always have their own GUID.
* 🔧 Increased Dummy/Seeker's "obstacle" avoidance threshold by one block.
  * This means they will now fall up to two blocks high, and climb obstacles up to two blocks tall when pursuing a target.
* 🔧 Changed Dummy/Seeker's gravity to be half as effective while underwater.
* 🔧 Changed Seeker's advancement to be only granted to the player who used its spawn egg.

And for the truly technical and of little relevance to gameplay purposes...

* 🔧 Added the **Mimic**, a Dummy variant who is both faster and stronger, but with one health point.
  * Introduced in a now scrapped structure prototype; The entity tag `lumenfuchs.entity.mimic` makes a Dummy behave like a Mimic.
  * Fun fact: In the original concept, Mimics had the appearance of a Seeker, and would rarely replace a Seeker in one of the scrapped structures.
* 🔧 Added *Dummy Map*, an item which tells the user their distance to the nearest Dummy Altar.
  * Currently only a (working) prototype; Future plans involve proper visuals and better usability.
  * Nonetheless, it does have its own recipe:
    * `minecraft:map`
    * `#lumenfuchs:dummy_material`
    * `minecraft:gold_ingot`
    * `minecraft:echo_shard`, `minecraft:redstone`, or `minecraft:glowstone_dust`
* 🔧 Added biome tags: `#lumenfuchs:has_structure/dummy_altar`, `#lumenfuchs:dummy_altar_biased_to`
* 🔧 Increased `interpolation_duration` from all `wave_limb` functions from `2` to `8`.
* 🔧 Decreased range at which DummyLib's "limb" entities could exist without a dummy entity nearby from `8` blocks to `4` blocks.
* 🔧 Changed *Lumenfuchs' Dummy*'s custom tick rate to use the same as *DummyLib*'s.
* 🔧 Updated several internal "clocks" to be consistent regardless of the datapack's custom tick rate.

## v1.5.1 - 2025-04-02

### Codename: `Hotfix: Folly`

* ✳️ Created new branch for 1.21.2 to 1.21.4-compatible versions of the datapack (`devel-1.21.4`)
  * Releases will now come in two flavors: `1.21.4-` (1.21.2 - 1.21.4) and `1.21.5+` (1.21.5 and above); Versions outside this range remain unsupported.
    * This effectively keeps *Lumenfuchs' Dummy* as a 1.21.2+ project as it's always been. Happy April y'all :)
* 🐛 Fixed translation keys for the Void Shard item being absent in both translation files.
* 🔺 Changed impact of Purity on both extremes:
  * High levels of Purity now prevent the Dummy from warping to the player; The player is also immune to the Dummy's "thorns" damage.
    * The Dummy may still pathfind towards high-Purity players, however.
  * The lowest levels of Purity now make the Void Shard even deadlier than before, but make the Dummy's attack *also* deadlier to the player!
* 🔧 Fixed Seeker's unique tag prefixed with DummyLib's namespace rather than Lumenfuchs's. (i.e. `dummy_lib.entity.seeker` -> `lumenfuchs.entity.seeker`)

## v1.5.0 - 2025-04-01

### Codename: `Ascension`

* ✳️ Added "Hotfix: " prefix to PATCH releases in the changelog for better consistency.
* ✳️ Updated icons for both the Datapack and Resource Pack.
* ✳️ Upgraded minimum game version to 1.21.5; Support for 1.21.4 and below will be dropped.
* 🐛 Fixed datapack's intro message not falling back to English when no translation was available.
* ⭐ Added a new drop for the Dummy: the *Void Shard*.
  * By holding right-click, the player can "charge" a powerful blast of dark energy, akin to the Dummy's own attack.
  * Holding it in the offhand and using the item allows for an alternative attack, which targets multiple mobs at the cost of lessened damage.
  * Exclusively dropped by the Dummy; Drop chance is separate from other items (i.e. it has a separate pool).
* ⭐ Added new *Purity* mechanic for the Dummy:
  * Killing a Dummy/Seeker increases Purity by 1;
  * Summoning a Dummy (via its Totem) decreases Purity by 1;
  * Using the Void Shard has a chance to decrease Purity based on how many targets were hit, if at all.
  * *Purity* affects the following mechanics:
    * High Purity levels prevent the Dummy from naturally spawning near the player and grants the "Ascended Being" advancement;
    * Low Purity levels make the Dummy's natural spawning faster, and grants the "Rotten Within" advancement.
* 🔧 Killing a DummyLib entity now keeps the `minecraft:interaction`'s `attack` NBT.
* 🔧 Introduced a WIP in-game book for relevant info on the datapack's functioning.
  * Can only be given with the `/function lumenfuchs:items/dummy_book` command.

## v1.4.0 - 2025-03-04

### Codename: `DummyLib`

* 🐛 Fixed "Dummy Drops Loot" setting triggering the wrong page in the settings panel.
* 🐛 Fixed trailing punctuation in the English translation of the datapack.
* 🐛 Fixed Dummy walking aimlessly in the wrong direction when too far away from the player.
* ⭐ Overhauled the Dummy's attack ability!
  * Now charges up a powerful blast with tremendous reach, targeted towards the nearest player to the Dummy's position; If none is found, all creatures within a great radius shall suffice instead.
  * The Dummy's attack is powerful, but can be interrupted if the Dummy itself is hurt while charging its attack ability. With the right timing, you can even deal double damage to the Dummy instead.
* ⭐ Added new "Warp" abilities for Dummy, for use when no players can be found in a large radius:
  * *Dimensional Bore* drops the Dummy all the way to the Void, breaking (configurable) any non-indestructible blocks (such as Bedrock) in the way.
    * A random player is also set to immediately attempt a Dummy natural spawning, if conditions are appropriate.
    * This will only trigger if the Dummy is left alone in a dimension with no players at all.
  * *Spatial Fold* causes the Dummy to teleport around its nearest player with the same algorithm used for spawning it.
    * This will trigger when the Dummy can't *stare* a nearby player; If it can still *walk towards them*, the Dummy might cancel this ability in favor of simply walking instead.
* ⭐ Added new setting to control the Dummy's "destructive" abilities.
  * This new setting also defines whether the Dummy and Seeker are able to break light-emitting blocks in their feet, which previously had no means to be disabled.
* 🔺 Dummy's natural spawning no longer ticks if the player is in open skylight.
* 🔺 Dummy's natural spawning now summons a Dummy on light levels 0-7, for consistency with the levels it triggers for the player themselves.
* 🔺 Dummy now only lasts in a world for up to 3600 ticks, after which it despawns in a similar fashion to the Seeker.
* 🔺 The Dummy no longer targets players in Spectator mode for any of its behaviors.
* 🔧 Introduced **DummyLib**, a library for creating Dummy-like entities, with basic behaviors and utility functions for a highly customizable experience.
  * *Lumenfuchs' Dummy*'s both "dummy entities" (Dummy and Seeker) are run with DummyLib!

## v1.3.1 - 2025-02-15

### Codename: `Hotfix: DummyLang`

* ✳️ Separated Dummy's code into `BP` and `RP` folders: The former holds the original datapack; The latter, the newest translations resource pack.
* 🐛 Fixed Dummy/Seeker sinking on Dirt Path blocks.
* ⭐ Added Brazilian Portuguese translation for the Dummy datapack.
* 🔺 Changed Dummy natural spawning sound to be hopefully more noticeable.
* 🔧 Added translation support for the entirety of the datapack.
  * If a proper translation is not found (or the resource pack is not present), the English version is used instead.
  * Debug-only messages are not included or affected by this change.

## v1.3.0 - 2025-02-01

### Codename: `Mood`

* 🐛 Fixed Dummy and Seeker influencing each other's rotation on close range.
* 🐛 Fixed welcoming message being triggered twice when first loading a world in v1.2.2.
* 🐛 Fixed "dummy limbs" left in the world on certain rare bugs having no way of being removed with Survival-friendly methods.
* ⭐ Dummy and Seeker now may randomly break light sources at their position, with the Dummy having a higher chance of doing so.
* ⭐ Added "lock" mechanic to dummy entities when on "redstone source" blocks (Redstone Block and Torch), which prevent all custom behaviors from occurring while active.
* 🔺 "Dummy Material" and "Dummy Hurt Material" have been expanded to allow customization of each individual limb of the Dummy.
  * Their respective pages on the settings panel have been updated accordingly, with a submenu for each setting now available on their usual locations.
* 🔺 Dummy's forceloading behavior now sets an "anchor" on unloaded chunks, which keeps that chunk loaded until the Dummy leaves to the next, or after 60 seconds.
* 🔺 Expanded dummy entities' acceleration mechanic, now momentum can be much stronger in both upwards and downwards directions.
  * The most notable effect of this is the Dummy having a noticeably stronger gravity.
* 🔺 Greatly expanded dummy entities' range of sounds played when stepping on a variety of blocks.
* 🔺 Added particle and audio effects for dummy entities when falling at high speeds.
* 🔺 Reduced Dummy's "tolerance range" (i.e. the range until it starts ignoring obstacles such as gaps and redstone) from `64` to `32` blocks.
* 🔺 Tweaked Dummy/Seeker's death animation.
* 🔺 The Dummy and Seeker will now immediately play their death animation when falling into the Void.
* 🔺 Changing a setting now instantly "refreshes" the settings panel with that change.
  * Does not (yet?) apply to edits via Settings Books.
* 🔺 Moved "Dummy Drops Loot" setting to "Behavior" category on the settings panel.
* 🔺 The Dummy and Seeker no longer walk on "redstone source" blocks above or below their target direction.
* 🔧 Added a "compatibility fix" upon datapack upgrading to prevent breaking existing worlds when updating to v1.3.0.
  * Worlds with the previous "Dummy Material"/"Dummy Hurt Material" format will be automatically updated, with all limbs being set to the old value; This essentially makes this setting behave the same as in earlier versions.
* 🔧 Changed versioning system to correctly set the latest datapack version on first load, and to only cause a reload if the world was already played before.
* 🔧 Changed Dummy and Seeker's transformation property to use decomposed objects instead of matrixes.
* 🔧 Changed dummy entities' damage simulation to occur on the first-phase update instead of the second.
* 🔧 Added block tags for amethyst block variants, iron-related blocks, light-emitting objects, moss-type blocks, and redstone-source blocks.
* 🔧 Added Lightning Bolt to "technical" entity tag.

## v1.2.2 - 2025-01-28

### Codename: `Hotfix: Rogue Dummy`

* 🐛 Fixed Dummy "stealing" limbs from nearby Dummies when spawned too close to one another.
* 🐛 Fixed Seeker (and potentially Dummy) bunny-hopping when attacking/walking towards nearby targets.

## v1.2.1 - 2025-01-28

### Codename: `Hotfix: MissingNoSettings`

* 🐛 Fixed upgrading from previous versions breaking the Dummy's behavior.
* 🔧 Added versioning system to keep track of when the user upgrades their world's datapack from a previous version.
  * For the sake of retroactively fixing previous versions' issues with missing settings, the local version is set to a version behind the latest upon first load. This will be fixed within the next update.

## v1.2.0 - 2025-01-27

### Codename: `Seeker`

* 🐛 Fixed option for reverting settings not working when cheats are disabled.
* ⭐ Added Seeker entity, a Dummy-adjacent being who targets mobs instead of the player.
* ⭐ Added Cleanser item, a tool for ~murdering~ disposing of Dummies and Seekers more easily.
* ⭐ Added loot for defeating the Dummy.
  * Possible loot includes all blocks usable for the Dummy Totem, spawn eggs for the Dummy and the Seeker entities, and the new Cleanser item.
* ⭐ Added new setting for allowing the Dummy to drop any loot (enabled by default).
* 🔺 Changed setting "Spawn under Sunlight" to be enabled by default.
  * It still requires "Natural Spawning" to be enabled, however, which is still disabled by default.
* 🔺 Removed chance for Dummy's natural spawning to fail even if that position was valid.
* 🔺 Greatly shortened intervals for attempting to spawn the Dummy, increasing its effective occurrence.
* 🔧 Added "dummy material" item tag mirroring its respective block tag.

## v1.1.1 - 2025-01-19

### Codename: `Hotfix: Dummy Book`

* 🐛 Fixed datapack incompatibility with versions prior to 1.21.4.
* 🐛 Fixed Dummy freezing its rotation after walking when "stare player" is disabled.
* 🐛 Fixed Dummy's delayed rotation when walking while "stare player" is disabled.
* 🐛 Fixed Dummy's legs out of sync with arms every now and then.
* 🐛 Fixed optional settings' reset button being wrongly linked to the wrong setting.
* ⭐ Added new optional setting for allowing the Dummy to spawn under skylight.
* ⭐ Added new "Settings Book" (in-game: "Write me!") for editing non-boolean (enabled/disabled) settings.
* 🔺 Increased chance to check for a valid spawn location when within range for spawning a Dummy, Dummy spawns should be less rare now.
* 🔺 Reduced Y-axis range for Dummy's natural spawning to 32 blocks.
* 🔺 Reduced duration of Darkness effect when a Dummy spawns to 8 seconds.
* 🔺 Reduced light level requirement for triggering the Dummy's natural spawning mechanic to 5.
* 🔺 Changed Dummy spawning audio cue to only play to the nearest player.

## v1.1.0 - 2025-01-18

### Codename: `Additions`

* ✳️ Added [changelog](#lumenfuchs-dummy-changelog).
* ✳️ Added [advanced usage manual](./USAGE.md).
* 🐛 Fixed Dummy's arms swinging out of sync.
* 🐛 Fixed forceload setting having no effect.
* ⭐ Added datapack icon image.
* ⭐ Added Dummy spawn egg.
  * Obtain with `/function lumenfuchs:dummy/utils/give_spawn_egg`
* ⭐ Added natural spawning mechanic, disabled by default.
* 🔺 The Dummy now recovers health when attacking.
* 🔺 The Dummy now refuses to walk in strongly-powered redstone, or above holes deeper than two blocks.
* 🔺 The Dummy now always faces the player when walking towards them regardless of the world's settings.
* 🔺 Changed Dummy summoning audio feedback.
* 🔺 Changed Dummy's ambience, now sounds are based on the Dummy's position rather than the player's.
* 🔧 Added new advancement for summoning the Dummy for the first time.
* 🔧 Added kelp to "transparent" block tag.
* 🔧 Changed forceloading deactivation range from `1` to `17` blocks.
* 🔧 Removed certain non- pass-through blocks from "transparent" block tag.

## v1.0.0 - 2025-01-16

### Codename: `Release`

* ⭐ Added Dummy.
* ⭐ Added Dummy totem structure.
* 🔧 Added random roll predicates (1%, 5% and 10%) from *Golden Arcane*.
* 🔧 Added predicate for detecting a Dummy totem.
* 🔧 Added "transparent" block tag and "technical" entity tag.
  * Both are borrowed from *Golden Arcane*'s "breathable" and "magic immune" tags, respectively.
* 🔧 Added "dummy material" block tag for all valid materials for the Dummy totem.

[^nocode]: This update is in very early stages and thus has no official name yet.
