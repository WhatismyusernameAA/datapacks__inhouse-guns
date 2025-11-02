# set maximum range
scoreboard players set @s gwp__gun-range 30

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/revolver/firing_raycast
tag @s remove gwp__shot

## EFFECTS
playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~1 ~ 1 1

playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 0.5 2
