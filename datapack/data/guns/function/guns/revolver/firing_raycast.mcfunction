# INTERACTIONS W. ENTITIES
## so turns out I've been doing dx/dy/dz wrong.. since it's a box selector I need to add an offset!
execute positioned ~-0.01 ~-0.01 ~-0.01 as @e[type=!#guns:gun_undamageable,dx=0.01, dy=0.01, dz=0.01,tag=!gwp__shot,sort=nearest,limit=1] at @s run function guns:guns/revolver/firing_penetrate-effects
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#guns:revolver_parriable_projectiles,dx=0.3, dy=0.3, dz=0.3,tag=!gwp__shot,sort=nearest,limit=1] at @s run function guns:guns/revolver/firing_interact_projectiles


# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:smoke ~ ~ ~ 0.01 0.01 0.01 0.01 1 force


# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
execute if block ~ ~ ~ minecraft:tnt run function guns:guns/scattergun/scattergun_interact_tnt
execute if block ~ ~ ~ minecraft:target run function guns:guns/scattergun/scattergun_interact_targetblock

fill ~ ~ ~ ~ ~ ~ air replace #guns:gun_breakable
execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^1 if block ~ ~ ~ #guns:air_like_groups run function guns:guns/revolver/firing_raycast
execute positioned ^ ^ ^1 unless block ~ ~ ~ #guns:air_like_groups run function guns:guns/revolver/firing_raycast_end
