## * AydenTFoxx @ 2025-01-15 .. 2025-03-01
## * 
## * Loads all settings for the datapack at their default values.


##? Appearance

## (dummy.material) | Default: "black_concrete"
# The default material for the dummy entity.
#execute unless data storage dummy_lib:flags dummy.material \
        run function dummy_lib:utils/settings/bulk_edit_material { setting: "material", material: "black_concrete" }

## (dummy.material_hurt) | Default: "red_concrete"
# The default material for the dummy entity's hurt state.
#execute unless data storage dummy_lib:flags dummy.material_hurt \
        run function dummy_lib:utils/settings/bulk_edit_material { setting: "material_hurt", material: "red_concrete" }


##? Behavior

## (dummy.forceload_chunks) | Default: ON
# Forceloads the chunk at the dummy entity's position.
execute unless data storage dummy_lib:flags dummy.forceload_chunks run data modify storage dummy_lib:flags dummy.forceload_chunks set value true