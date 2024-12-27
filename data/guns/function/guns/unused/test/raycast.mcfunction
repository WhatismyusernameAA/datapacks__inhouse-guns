execute positioned ~ ~1.35 ~ as @e[dx=0,sort=nearest,limit=1] at @s run function guns:test/penetrate-effects
particle minecraft:ash ~ ~1.35 ~ 0.05 0.05 0.05 0.05 1 force
# playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.1 2

execute positioned ^ ^ ^0.8 positioned ~ ~1.35 ~ if block ~ ~ ~ air positioned ~ ~-1.35 ~ run function guns:test/raycast