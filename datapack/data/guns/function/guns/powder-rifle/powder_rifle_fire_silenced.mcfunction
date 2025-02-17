## EFFECTS
playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~1 ~ 0.5 0.8

playsound minecraft:entity.shulker.shoot player @a ~ ~1 ~ 0.1 2

# set maximum range
scoreboard players set @s gwp__gun-range 60

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/powder-rifle/raycast
tag @s remove gwp__shot

# remove bullet from inventory
clear @s command_block[custom_data={custom_item:"inhouse_guns:gunpowder_round"}] 1

#rifle cooldown
scoreboard players set @s gwp__gun-cooldown -40