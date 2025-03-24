execute if predicate guns:item/powder_rifle/powder_rifle_holding unless predicate guns:item/powder_rifle/powder_rifle_holding_offhand run item modify entity @s weapon.mainhand guns:item/decrease_durability
execute if predicate guns:item/powder_rifle/powder_rifle_holding_offhand run item modify entity @s weapon.offhand guns:item/decrease_durability
