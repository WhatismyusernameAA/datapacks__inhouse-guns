## EFFECTS
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~1 ~ 3 0.5

playsound minecraft:entity.generic.big_fall player @a ~ ~1 ~ 1 1
playsound minecraft:entity.generic.explode player @a ~ ~1 ~ 1 1.3
playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 1 1.4

particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0 0 0 0.05 5 force

# knockback
tp ^ ^ ^-0.1
tp ~ ~0.1 ~

# set maximum range
scoreboard players set @s gwp__gun-range 80
execute if predicate guns:item/attachments/has_long_barrel run scoreboard players set @s gwp__gun-range 120

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/powder-rifle/raycast
tag @s remove gwp__shot
