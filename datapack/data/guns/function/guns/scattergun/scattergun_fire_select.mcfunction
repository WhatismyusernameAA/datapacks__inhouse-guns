execute if predicate guns:item/attachments/has_silencer run function guns:guns/scattergun/scattergun_fire_silenced
execute unless predicate guns:item/attachments/has_silencer run function guns:guns/scattergun/scattergun_fire

# remove bullet from inventory
clear @s command_block[custom_data={custom_item:"inhouse_guns:gunpowder_shot"}] 1

# modify durability of gun
execute if predicate guns:item/scattergun/has_unbreaking run function guns:guns/scattergun/scattergun_decrease_durability_unbreaking
execute unless predicate guns:item/scattergun/has_unbreaking run function guns:guns/scattergun/scattergun_decrease_durability

execute if predicate guns:item/scattergun/scattergun_unbroken run function guns:guns/scattergun/scattergun_damaged_explode

#rifle cooldown
scoreboard players set @s gwp__gun-cooldown -50
