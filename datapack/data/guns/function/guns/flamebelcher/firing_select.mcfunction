execute if predicate guns:item/attachments/has_sculk_piercer run function guns:guns/flamebelcher/firing_effects_sonic
execute if predicate guns:item/attachments/has_long_barrel run function guns:guns/flamebelcher/firing_effects_long
execute unless predicate guns:item/attachments/has_sculk_piercer unless predicate guns:item/attachments/has_long_barrel unless predicate guns:item/attachments/has_sculk_piercer run function guns:guns/flamebelcher/firing_effects


# remove bullet from inventory
clear @s command_block[custom_data={custom_item:"inhouse_guns:blaze_charge"}] 1

# modify durability of gun
execute if predicate guns:item/guns/flamebelcher/has_unbreaking run function guns:guns/flamebelcher/durability_decrease_unbreaking
execute unless predicate guns:item/guns/flamebelcher/has_unbreaking run function guns:guns/flamebelcher/durability_decrease

execute if predicate guns:item/guns/flamebelcher/broken run function guns:guns/flamebelcher/durability_damaged_explode

#return to aiming
tag @s remove gwp__aiming-ready
function guns:guns/flamebelcher/aiming

