# set maximum range
scoreboard players set @s gwp__gun-range 40

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/revolver/firing_raycast
tag @s remove gwp__shot

## EFFECTS
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~1 ~ 3 0.8

playsound minecraft:entity.generic.big_fall player @a ~ ~1 ~ 1 1.5
playsound minecraft:entity.generic.explode player @a ~ ~1 ~ 0.4 1.8
playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 1 2

particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0 0 0 0.05 1 normal
