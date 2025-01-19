# Lumenfuchs' Dummy Changelog

Legend:

> ✳️ Meta  
> 🐛 Bugfix  
> ⭐ Feature  
> 🔺 Enhancement  
> 🔧 Technical

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
