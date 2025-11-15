# set maximum range
scoreboard players set @s gwp__gun-range 18

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^2 anchored eyes run function guns:guns/flamebelcher/firing_raycast
tag @s remove gwp__shot

## EFFECTS
playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 1 1
playsound minecraft:entity.generic.explode player @a ~ ~1 ~ 0.5 1.5
playsound minecraft:item.firecharge.use player @a ~ ~1 ~ 1 1

particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0.1 0.1 0.1 0.05 30 normal
particle minecraft:flame ^ ^1.35 ^1.2 0.1 0.1 0.1 0.05 10 normal
particle minecraft:lava ^ ^1.35 ^1.2 0.1 0.1 0.1 0.05 5 normal
