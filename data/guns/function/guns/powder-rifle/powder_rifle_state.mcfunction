# check through states, if already aiming (and within aim ready phase) then fire, if not then aim
execute if entity @s[tag=gwp__aiming,tag=gwp__aiming-ready] run function guns:guns/powder-rifle/powder_rifle_fire
execute if entity @s[tag=!gwp__aiming] run function guns:guns/powder-rifle/powder_rifle_aim