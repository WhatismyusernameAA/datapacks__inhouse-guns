damage @s 8 player_explosion by @s

playsound minecraft:entity.generic.explode player @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~1 ~ 0.1 0.9
playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1

particle explosion ^ ^1.2 ^1 0.1 0.1 0.1 1 1 normal
particle minecraft:angry_villager ^ ^1.2 ^1 0.5 0.5 0.5 1 3 normal


execute if predicate guns:item/guns/revolver/holding unless predicate guns:item/guns/revolver/holding_offhand run item replace entity @s weapon.mainhand with air
execute if predicate guns:item/guns/revolver/holding_offhand run item replace entity @s weapon.offhand with air
