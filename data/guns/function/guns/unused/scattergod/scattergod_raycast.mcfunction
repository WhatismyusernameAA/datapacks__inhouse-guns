# INTERACTIONS W. ENTITIES
execute as @e[dx=2, dy=2, dz=2,tag=!gwp__shot,sort=nearest] at @s run function guns:guns/scattergun/penetrate-effects

# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:explosion ~ ~ ~ 1 1 1 0.01 5 normal
particle minecraft:electric_spark ~ ~ ~ 1 1 1 0.01 10 normal


# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air destroy
execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^1 run function guns:guns/unused/scattergod/scattergod_raycast