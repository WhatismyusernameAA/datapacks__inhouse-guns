## EFFECTS
playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~1 ~ 1 0.8

playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 0.5 2

# set maximum range
scoreboard players set @s gwp__gun-range 80

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/powder-rifle/raycast
tag @s remove gwp__shot