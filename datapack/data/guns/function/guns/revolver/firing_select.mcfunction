execute if predicate guns:item/attachments/has_silencer run function guns:guns/revolver/firing_effects_silenced
execute if predicate guns:item/attachments/has_sculk_piercer run function guns:guns/revolver/firing_effects_sonic
execute unless predicate guns:item/attachments/has_sculk_piercer unless predicate guns:item/attachments/has_silencer run function guns:guns/revolver/firing_effects

# remove bullet from inventory
clear @s command_block[custom_data={custom_item:"inhouse_guns:gunpowder_round"}] 1

# modify durability of gun
execute if predicate guns:item/guns/revolver/has_unbreaking run function guns:guns/revolver/durability_decrease_unbreaking
execute unless predicate guns:item/guns/revolver/has_unbreaking run function guns:guns/revolver/durability_decrease

execute if predicate guns:item/guns/revolver/broken run function guns:guns/revolver/durability_damaged_explode

#return to aiming
tag @s remove gwp__aiming-ready
function guns:guns/revolver/aiming

