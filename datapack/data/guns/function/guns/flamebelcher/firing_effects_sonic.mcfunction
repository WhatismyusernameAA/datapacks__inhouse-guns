# set maximum range
scoreboard players set @s gwp__gun-range 8

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^2 anchored eyes run function guns:guns/flamebelcher/firing_raycast_sonic
tag @s remove gwp__shot

## EFFECTS
playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 1 0.8
playsound minecraft:entity.generic.explode player @a ~ ~1 ~ 0.5 1.2
playsound minecraft:item.firecharge.use player @a ~ ~1 ~ 1 1
playsound minecraft:entity.wither.shoot player @a ~ ~1 ~ 1 1


particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0.3 0.3 0.3 0.05 30 normal
particle minecraft:soul_fire_flame ^ ^1.35 ^1.2 0.3 0.3 0.3 0.05 10 normal
particle minecraft:sculk_soul ^ ^1.35 ^1.2 0.3 0.3 0.3 0.05 10 normal
