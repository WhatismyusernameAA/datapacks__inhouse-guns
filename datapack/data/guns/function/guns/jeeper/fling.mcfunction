execute store result score @s gwp__fling_x run data get entity @s Pos[0] 100
execute store result score @s gwp__fling_y run data get entity @s Pos[1] 100
execute store result score @s gwp__fling_z run data get entity @s Pos[2] 100

execute store result score @s gwp__flingto_x run data get entity @p[distance=..1,tag=_fling] Pos[0] 100
execute store result score @s gwp__flingto_y run data get entity @p[distance=..1,tag=_fling] Pos[1] 100
execute store result score @s gwp__flingto_z run data get entity @p[distance=..1,tag=_fling] Pos[2] 100

scoreboard players operation @s gwp__fling_x -= @s gwp__flingto_x
scoreboard players operation @s gwp__fling_y -= @s gwp__flingto_y
scoreboard players remove @s gwp__fling_y 150
scoreboard players operation @s gwp__fling_z -= @s gwp__flingto_z

execute store result entity @s Motion[0] double 0.05 run scoreboard players get @s gwp__fling_x
execute store result entity @s Motion[1] double 0.05 run scoreboard players get @s gwp__fling_y
execute store result entity @s Motion[2] double 0.05 run scoreboard players get @s gwp__fling_z

tag @s remove _init