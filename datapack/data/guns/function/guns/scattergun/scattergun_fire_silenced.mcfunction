# set maximum range
scoreboard players set @s gwp__gun-range 10

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/scattergun/scattergun_raycast
tag @s remove gwp__shot

# effects
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~1 ~ 1 0.5

playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 0.1 1
