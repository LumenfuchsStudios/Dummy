## * AydenTFoxx @ 2025-01-13 .. 2025-01-31
## * 
## * Summons a "fake Player" entity, with a block display-based model.


## Core

summon interaction ~0.5 ~ ~0.5 { \
	CustomName: '{ "text": "YNHZRFXN", "color": "black", "obfuscated": true }', \
	CustomNameVisible: false, \
	response: false, \
	Tags: [ lumenfuchs.entity, lumenfuchs.entity.dummy ], \
	height: 1.8, \
	width: 0.8 \
}


## Limbs

# L. Arm
summon item_display ~0.5 ~1.4 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.l_arm ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: { \
		left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		translation: [0.36f, -0.35f, 0.0f], \
		right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		scale: [0.24f, 0.7f, 0.25f] \
	}, \
	teleport_duration: 2, \
	width: 0.24, \
	height: 0.7 \
}

# R. Arm
summon item_display ~0.5 ~1.4 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.r_arm, lumenfuchs.clock_invert ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: { \
		left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		translation: [-0.36f, -0.35f, 0.0f], \
		right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		scale: [0.24f, 0.7f, 0.25f] \
	}, \
	teleport_duration: 2, \
	width: 0.24, \
	height: 0.7 \
}


# L. Leg
summon item_display ~0.5 ~0.7 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.l_leg, lumenfuchs.clock_invert ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: { \
		left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		translation: [0.12f, -0.35f, 0.0f], \
		right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		scale: [0.24f, 0.7f, 0.25f] \
	}, \
	teleport_duration: 2, \
	shadow_radius: 0.5, \
	width: 0.24, \
	height: 0.7 \
}

# R. Leg
summon item_display ~0.5 ~0.7 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.r_leg ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: { \
		left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		translation: [-0.12f, -0.35f, 0.0f], \
		right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		scale: [0.24f, 0.7f, 0.25f] \
	}, \
	teleport_duration: 2, \
	shadow_radius: 0.5, \
	width: 0.24, \
	height: 0.7 \
}


# Torso
summon item_display ~0.5 ~1 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.torso ], start_interpolation: 2, \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: { \
		left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		translation: [0.0f, 0.05f, 0.0f], \
		right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		scale: [0.48f, 0.7f, 0.25f] \
	}, \
	teleport_duration: 2, \
	width: 0.48, \
	height: 0.7 \
}

# Head
summon item_display ~0.5 ~1.64 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.head ], start_interpolation: 2, \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: { \
		left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		translation: [0.0f, 0.0f, 0.0f], \
		right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
		scale: [0.48f, 0.48f, 0.48f] \
	}, \
	teleport_duration: 2, \
	width: 0.48, \
	height: 0.48 \
}


## Set Health
execute as @e[type=interaction, tag=lumenfuchs.entity.dummy, distance=..1] unless score @s lumenfuchs.guid matches 1.. run scoreboard players set @s lumenfuchs.health 8

## Set Materials
execute positioned ~0.5 ~1 ~0.5 as @n[type=item_display, tag=lumenfuchs.dummy_limb.head, distance=..2] \
		unless score @s lumenfuchs.guid matches 1.. run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material.head

execute positioned ~0.5 ~1 ~0.5 as @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..2] \
		unless score @s lumenfuchs.guid matches 1.. run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material.torso

execute positioned ~0.5 ~1 ~0.5 as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..2] \
		unless score @s lumenfuchs.guid matches 1.. run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material.left_arm

execute positioned ~0.5 ~1 ~0.5 as @n[type=item_display, tag=lumenfuchs.dummy_limb.r_arm, distance=..2] \
		unless score @s lumenfuchs.guid matches 1.. run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material.right_arm

execute positioned ~0.5 ~1 ~0.5 as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_leg, distance=..2] \
		unless score @s lumenfuchs.guid matches 1.. run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material.left_leg

execute positioned ~0.5 ~1 ~0.5 as @n[type=item_display, tag=lumenfuchs.dummy_limb.r_leg, distance=..2] \
		unless score @s lumenfuchs.guid matches 1.. run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material.right_leg

## Grant Advancement
advancement grant @a[advancements={ lumenfuchs:the_dummy=false }, distance=..16] only lumenfuchs:the_dummy


## Set GUID
execute positioned ~0.5 ~1 ~0.5 as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, distance=..2] \
		unless score @s lumenfuchs.guid matches 1.. \
		run scoreboard players operation @s lumenfuchs.guid = #lumenfuchs_guid lumenfuchs.guid

execute as @e[type=interaction, tag=lumenfuchs.entity.dummy, distance=..1] unless score @s lumenfuchs.guid matches 1.. run scoreboard players operation @s lumenfuchs.guid = #lumenfuchs_guid lumenfuchs.guid

scoreboard players add #lumenfuchs_guid lumenfuchs.guid 1