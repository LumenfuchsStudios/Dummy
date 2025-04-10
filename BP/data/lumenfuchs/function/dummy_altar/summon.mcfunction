## * AydenTFoxx @ 2025-04-05 .. 2025-04-07
## * 
## * Summons a Dummy Altar block entity.

# Does not summon: a new Ayden


# Summon entity
execute align xyz run summon block_display ~ ~ ~ { block_state: { Name: "respawn_anchor", Properties: { charges: "2" } }, Tags: [ lumenfuchs.entity.dummy_altar ] }
execute align xyz run summon interaction ~0.5 ~ ~0.5 { response: true, width: 1.001, height: 1.001, Tags: [ lumenfuchs.entity.dummy_altar ] }

# Set anchor block
setblock ~ ~ ~ barrier


# Display audiovisual feedback
playsound block.end_portal.spawn block @a[distance=..16] ~ ~0.5 ~ 1 0.5 0.1

particle explosion_emitter ~ ~0.5 ~ 0.0 0.0 0.0 1 1
particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.1 20


# Remove vessel
kill @s[type=marker]