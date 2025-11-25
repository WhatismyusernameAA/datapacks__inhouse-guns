execute if predicate guns:item/attachments/has_sculk_piercer run function guns:guns/mortargun/firing_effects_sonic
execute unless predicate guns:item/attachments/has_sculk_piercer run function guns:guns/mortargun/firing_effects

# remove bullet from inventory
clear @s command_block[custom_data={custom_item:"inhouse_guns:gunpowder_slug"}] 1

# modify durability of gun
execute if predicate guns:item/guns/mortargun/has_unbreaking run function guns:guns/mortargun/durability_decrease
execute unless predicate guns:item/guns/mortargun/has_unbreaking run function guns:guns/mortargun/durability_decrease

execute if predicate guns:item/guns/mortargun/broken run function guns:guns/scattergun/scattergun_damaged_explode

#rifle cooldown
scoreboard players set @s gwp__gun-cooldown -70
