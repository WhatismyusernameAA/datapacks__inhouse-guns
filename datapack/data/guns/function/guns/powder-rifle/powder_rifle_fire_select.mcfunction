execute if predicate guns:item/attachments/has_silencer run function guns:guns/powder-rifle/powder_rifle_fire_silenced
execute if predicate guns:item/attachments/has_sculk_piercer run function guns:guns/powder-rifle/powder_rifle_fire_sonic
execute unless predicate guns:item/attachments/has_sculk_piercer unless predicate guns:item/attachments/has_silencer run function guns:guns/powder-rifle/powder_rifle_fire

# remove bullet from inventory
clear @s command_block[custom_data={custom_item:"inhouse_guns:gunpowder_round"}] 1

# modify durability of rifle
execute if predicate guns:item/powder_rifle/has_unbreaking run function guns:guns/powder-rifle/powder_rifle_decrease_durability_unbreaking
execute unless predicate guns:item/powder_rifle/has_unbreaking run function guns:guns/powder-rifle/powder_rifle_decrease_durability

execute if predicate guns:item/powder_rifle/powder_rifle_unbroken run function guns:guns/powder-rifle/powder_rifle_damaged_explode

#rifle cooldown
scoreboard players set @s gwp__gun-cooldown -40