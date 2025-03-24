execute if predicate guns:item/scattergun/scattergun_holding unless predicate guns:item/scattergun/scattergun_holding_offhand run item modify entity @s weapon.mainhand guns:item/decrease_durability
execute if predicate guns:item/scattergun/scattergun_holding_offhand run item modify entity @s weapon.offhand guns:item/decrease_durability
