# set maximum range
scoreboard players set @s gwp__gun-range 18

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/mortargun/firing_raycast
tag @s remove gwp__shot

# effects
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~1 ~ 5 0.5

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 0.5

particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0 0 0 0.3 5 normal
particle minecraft:explosion ^ ^1.35 ^1.2 0.3 0.3 0.3 1 2 force

