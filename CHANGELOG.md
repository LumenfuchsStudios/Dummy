# Lumenfuchs' Dummy Changelog

Legend:

> ✳️ Meta  
> 🐛 Bugfix  
> ⭐ Feature  
> 🔺 Enhancement  
> 🔧 Technical

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
