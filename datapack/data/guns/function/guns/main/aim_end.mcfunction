attribute @s minecraft:movement_speed modifier remove gwp__gun-focus
tag @s remove gwp__aiming
tag @s remove gwp__aiming-ready

# modify items if holding items
# MAY NEED TO EFFICIZE THIS SOMEHOW
execute if predicate guns:item/powder_rifle/powder_rifle_holding run function guns:guns/powder-rifle/powder_rifle_lower
execute if predicate guns:item/scattergun/scattergun_holding run function guns:guns/scattergun/scattergun_lower
execute if predicate guns:item/guns/revolver/holding run function guns:guns/revolver/aiming_lower
execute if predicate guns:item/guns/flamebelcher/holding run function guns:guns/flamebelcher/aiming_lower
