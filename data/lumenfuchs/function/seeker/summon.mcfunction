## * AydenTFoxx @ 2025-01-27
## * 
## * Summons a Dummy-like entity with a Carved Pumpkin on its head.


## Core

summon interaction ~0.5 ~ ~0.5 { \
	CustomName: '{ "text": "LKRLSLPN", "color": "black", "obfuscated": true }', \
	CustomNameVisible: false, \
	response: false, \
	Tags: [ lumenfuchs.entity, lumenfuchs.entity.seeker ], \
	height: 1.8, \
	width: 0.8 \
}


## Limbs

# L. Arm
summon item_display ~0.5 ~1.4 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.l_arm ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.24f,0f,0f,0.36f,0f,0.7f,0f,-0.35f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	shadow_radius: 0.5, \
	width: 0.24, \
	height: 0.7 \
}

# R. Arm
summon item_display ~0.5 ~1.4 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.r_arm, lumenfuchs.clock_invert ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.24f,0f,0f,-0.36f,0f,0.7f,0f,-0.35f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	shadow_radius: 0.5, \
	width: 0.24, \
	height: 0.7 \
}


# L. Leg
summon item_display ~0.5 ~0.7 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.l_leg, lumenfuchs.clock_invert ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.24f,0f,0f,0.12f,0f,0.7f,0f,-0.35f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	shadow_radius: 0.5, \
	width: 0.24, \
	height: 0.7 \
}

# R. Leg
summon item_display ~0.5 ~0.7 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.r_leg ], \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.24f,0f,0f,-0.12f,0f,0.7f,0f,-0.35f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	shadow_radius: 0.5, \
	width: 0.24, \
	height: 0.7 \
}


# Torso
summon item_display ~0.5 ~1 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.torso ], start_interpolation: 2, \
	item: { id: "black_concrete" }, item_display: "head", \
	transformation: [ 0.48f,0f,0f,0.0f,0f,0.7f,0f,0.05f,0f,0f,0.25f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	shadow_radius: 0.5, \
	width: 0.48, \
	height: 0.7 \
}

# Head
summon item_display ~0.5 ~1.64 ~0.5 { \
	Tags: [ lumenfuchs.entity.dummy_limb, lumenfuchs.dummy_limb.head ], start_interpolation: 2, \
	item: { id: "carved_pumpkin" }, item_display: "head", \
	transformation: [ 0.55f,0f,0f,0.0f,0f,0.55f,0f,0.0f,0f,0f,0.55f,0.0f,0f,0f,0f,1f ], \
	teleport_duration: 2, \
	shadow_radius: 0.5, \
	width: 0.48, \
	height: 0.48 \
}


## Set Health
scoreboard players set @n[type=interaction, tag=lumenfuchs.entity.seeker, distance=..1] lumenfuchs.health 8

## Set Material
execute positioned ~0.5 ~1 ~0.5 as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.head, distance=..2] run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material


## Set GUID

execute positioned ~0.5 ~1 ~0.5 run scoreboard players operation @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, distance=..2] lumenfuchs.guid = #lumenfuchs_guid lumenfuchs.guid

scoreboard players operation @e[type=interaction, tag=lumenfuchs.entity.seeker, distance=..1] lumenfuchs.guid = #lumenfuchs_guid lumenfuchs.guid

scoreboard players add #lumenfuchs_guid lumenfuchs.guid 1