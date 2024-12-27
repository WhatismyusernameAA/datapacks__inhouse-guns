playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 3 0.5

playsound minecraft:entity.generic.big_fall player @a ~ ~ ~ 1 1
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.3
playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 1.4

particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0 0 0 0.1 5 force

tp ^ ^0.1 ^-0.1

tag @s add gwp__shot
execute positioned ^ ^ ^1.4 run function guns:test/raycast
tag @s remove gwp__shot
