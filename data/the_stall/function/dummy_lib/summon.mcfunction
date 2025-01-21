## * AydenTFoxx | 2025-01-13 .. 2025-01-16
## * 
## * Summons a "fake Player" entity, with an item display-based model.


## Core

summon interaction ~0.5 ~ ~0.5 { \
	CustomName: '{ "text": "YNHZRFXN", "color": "black", "obfuscated": true }', \
	CustomNameVisible: false, \
	response: false, \
	Tags: [ dummy_lib.entity.dummy, the_stall.entity.stall ], \
	height: 1.8, \
	width: 0.8 \
}


## Limbs

# L. Arm
summon item_display ~0.5 ~1.4 ~0.5 { \
	Tags: [ dummy_lib.entity.dummy_limb, dummy_lib.dummy_limb.l_arm, the_stall.entity.stall_limb ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.24f,0f,0f,0.36f,0f,0.7f,0f,-0.35f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	width: 0.24, \
	height: 0.7 \
}

# R. Arm
summon item_display ~0.5 ~1.4 ~0.5 { \
	Tags: [ dummy_lib.entity.dummy_limb, dummy_lib.dummy_limb.r_arm, dummy_lib.clock_invert, the_stall.entity.stall_limb ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.24f,0f,0f,-0.36f,0f,0.7f,0f,-0.35f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	width: 0.24, \
	height: 0.7 \
}


# L. Leg
summon item_display ~0.5 ~0.7 ~0.5 { \
	Tags: [ dummy_lib.entity.dummy_limb, dummy_lib.dummy_limb.l_leg, dummy_lib.clock_invert, the_stall.entity.stall_limb ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.24f,0f,0f,0.12f,0f,0.7f,0f,-0.35f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	width: 0.24, \
	height: 0.7 \
}

# R. Leg
summon item_display ~0.5 ~0.7 ~0.5 { \
	Tags: [ dummy_lib.entity.dummy_limb, dummy_lib.dummy_limb.r_leg, the_stall.entity.stall_limb ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.24f,0f,0f,-0.12f,0f,0.7f,0f,-0.35f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	width: 0.24, \
	height: 0.7 \
}


# Torso
summon item_display ~0.5 ~1 ~0.5 { \
	Tags: [ dummy_lib.entity.dummy_limb, dummy_lib.dummy_limb.torso, the_stall.entity.stall_limb ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.48f,0f,0f,0.0f,0f,0.7f,0f,0.05f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	width: 0.48, \
	height: 0.7 \
}

# Head
summon item_display ~0.5 ~1.64 ~0.5 { \
	Tags: [ dummy_lib.entity.dummy_limb, dummy_lib.dummy_limb.head, the_stall.entity.stall_limb ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.48f,0f,0f,0.0f,0f,0.5f,0f,0.0f,0f,0f,0.48f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	width: 0.48, \
	height: 0.48 \
}


## Set Health
scoreboard players set @n[type=interaction, tag=dummy_lib.entity.dummy, distance=..1] dummy_lib.health 8

## Set Material
execute positioned ~0.5 ~1 ~0.5 as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, distance=..2] run data modify entity @s item.id set string storage dummy_lib:flags the_stall.material

## Grant Advancement
advancement grant @a[advancements={ lumenfuchs:the_stall=false }, distance=..16] only lumenfuchs:the_stall


## Set GUID

execute positioned ~0.5 ~1 ~0.5 run scoreboard players operation @e[type=item_display, tag=dummy_lib.entity.dummy_limb, distance=..2] dummy_lib.guid = #dummy_lib_guid dummy_lib.guid

scoreboard players operation @e[type=interaction, tag=dummy_lib.entity.dummy, distance=..1] dummy_lib.guid = #dummy_lib_guid dummy_lib.guid

scoreboard players add #dummy_lib_guid dummy_lib.guid 1