execute store result entity @s Motion[0] double -1 run data get entity @s Motion[0]
execute store result entity @s Motion[1] double -1 run data get entity @s Motion[1]
execute store result entity @s Motion[2] double -1 run data get entity @s Motion[2]

playsound minecraft:entity.generic.big_fall player @a ~ ~1 ~ 1 1.5
playsound entity.arrow.hit_player player @a ~ ~1 ~ 1 0.5
particle explosion ~ ~ ~ 0 0 0 1 1 normal