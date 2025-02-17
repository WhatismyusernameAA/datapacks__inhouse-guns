## EFFECTS
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~1 ~ 3 1

playsound minecraft:entity.generic.big_fall player @a ~ ~1 ~ 1 1
playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 1 2
playsound minecraft:block.bamboo.break player @a ~ ~1 ~ 1 1
playsound minecraft:entity.item.break player @a ~ ~1 ~ 1 1

particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0 0 0 0.05 5 force
particle minecraft:block{block_state:"bamboo_planks"} ^ ^1.35 ^1.2 0.2 0.2 0.2 1 10 normal


# set maximum range
scoreboard players set @s gwp__gun-range 30

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/bamboo_cartridge/cartridge_raycast
tag @s remove gwp__shot

#rifle cooldown
scoreboard players set @s gwp__gun-cooldown -40

advancement revoke @s only guns:triggers/used_cartridge