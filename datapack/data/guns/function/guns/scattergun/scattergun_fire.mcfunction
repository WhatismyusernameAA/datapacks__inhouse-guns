# set maximum range
scoreboard players set @s gwp__gun-range 10

# add "did shot" tag, and then set raycast;
tag @s add gwp__shot
execute at @s positioned ^ ^ ^1.4 anchored eyes run function guns:guns/scattergun/scattergun_raycast
tag @s remove gwp__shot

# remove bullet from inventory
clear @s command_block[custom_data={custom_item:"inhouse_guns:gunpowder_shot"}] 1

# modify durability of gun
execute if predicate guns:item/scattergun/scattergun_holding unless predicate guns:item/scattergun/scattergun_holding_offhand run item modify entity @s weapon.mainhand guns:item/powder_rifle/decrease_durability
execute if predicate guns:item/scattergun/scattergun_holding_offhand run item modify entity @s weapon.offhand guns:item/powder_rifle/decrease_durability

execute if predicate guns:item/scattergun/scattergun_damaged run function guns:guns/powder-rifle/powder_rifle_damaged_explode

#rifle cooldown
scoreboard players set @s gwp__gun-cooldown -50

# effects
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~1 ~ 3 0.5

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.9
playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1

particle minecraft:campfire_cosy_smoke ^ ^1.35 ^1.2 0 0 0 0.3 5 normal
particle minecraft:explosion ^ ^1.35 ^1.2 0.3 0.3 0.3 1 2 force

