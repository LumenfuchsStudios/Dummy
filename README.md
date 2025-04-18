# The Dummy

![The Dummy standing against a village](.github/assets/the_dummy_ii.png)

**Lumenfuchs' Dummy** (or simply *The Dummy*) is a simple proof-of-concept datapack which adds a singular entity: the Dummy.

Whether summoned by a player or naturally spawned, it has a sole purpose: find the player, no matter where, no matter how. It will always move towards its target, ignoring all obstacles and even defying physics itself to achieve its ultimate goal... whatever it might be.

## About

The concept of this datapack was to create a pseudo-entity entirely out of "technical" entities, like item/block displays, markers and interactions. The resulting creature is not a mob by any of the game's standards, but reacts and operates as closely to one as it can.

The Dummy entity is made entirely out of `item_display`s and a single `interaction` entity for hitbox detection. Its behavior is highly configurable, and the datapack is reasonably optimized while still allowing said customizability.

[![The Dummy in its early stages, with each limb denoted as a differently colored concrete block. The head would've been red, but I got too used to green, so green it was throughout all development](.github/assets/true_dummy.png)](.github/assets/dummy_bloopers.png)

## Installation & Update

Download the ZIP archive from the [latest release version](https://github.com/LumenfuchsStudios/Dummy/releases) and extract it on your world's `datapacks` folder. Open the world (or type `/reload` if it was already open) and the pack should be enabled.

To update an existing world's datapack, delete the `Lumenfuchs-Dummy` folder at `datapacks` and repeat the same procedures above.  

> For more information, see the *Minecraft Wiki* page on [how to install a datapack](https://minecraft.wiki/w/Tutorial:Installing_a_data_pack).

## Usage

* To summon a Dummy entity, run `/function lumenfuchs:dummy/summon`
* To open the settings panel, run `/function lumenfuchs:_settings`
* To open a helpful message containing both links above, run `/function lumenfuchs:_help`,

> [!NOTE]
> For a complete list of the datapack's capabilities, see [here](./USAGE.md).

## License

**Lumenfuchs' Dummy** is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).
