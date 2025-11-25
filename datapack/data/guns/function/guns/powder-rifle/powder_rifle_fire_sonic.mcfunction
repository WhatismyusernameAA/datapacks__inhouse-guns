## EFFECTS
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~1 ~ 3 0.5

playsound minecraft:entity.generic.big_fall player @a ~ ~1 ~ 1 1
playsound minecraft:entity.generic.explode player @a ~ ~1 ~ 1 1.3
playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 1 1.4
playsound minecraft:entity.warden.sonic_boom player @a ~ ~1 ~ 1 1

particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0 0 0 0.05 5 force
particle minecraft:sonic_boom ^ ^1.35 ^1.2 0 0 0 0.05 1 force


# knockback
tp ^ ^ ^-0.1
tp ~ ~0.1 ~


# set maximum range
scoreboard players set @s gwp__gun-range 40

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s anchored eyes positioned ^ ^ ^1.4 run function guns:guns/powder-rifle/raycast_sonic
tag @s remove gwp__shot