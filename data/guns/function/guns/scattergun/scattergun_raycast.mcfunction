# INTERACTIONS W. ENTITIES
execute as @e[type=!#guns:gun_undamageable,dx=2, dy=2, dz=2,tag=!gwp__shot,sort=nearest] at @s run function guns:guns/scattergun/penetrate-effects

# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.01 1 normal
particle minecraft:smoke ~ ~ ~ 1 1 1 0.01 3 normal


# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
execute if block ~ ~ ~ minecraft:tnt run function guns:guns/scattergun/scattergun_interact_tnt
execute if block ~ ~ ~ #guns:gun_breakable run fill ~ ~ ~ ~ ~ ~ air destroy
execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^1 if block ~ ~ ~ #guns:air_like_groups run function guns:guns/scattergun/scattergun_raycast