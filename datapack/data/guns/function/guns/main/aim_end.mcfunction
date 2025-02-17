attribute @s minecraft:movement_speed modifier remove gwp__gun-focus
tag @s remove gwp__aiming
tag @s remove gwp__aiming-ready

# modify items if holding items
execute if predicate guns:item/powder_rifle/powder_rifle_holding run function guns:guns/powder-rifle/powder_rifle_lower
execute if predicate guns:item/scattergun/scattergun_holding run function guns:guns/scattergun/scattergun_lower

