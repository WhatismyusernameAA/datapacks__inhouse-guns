# INTERACTIONS W. ENTITIES
## so turns out I've been doing dx/dy/dz wrong.. since it's a box selector I need to add an offset!
execute positioned ~-1 ~-1 ~-1 as @e[type=!#guns:gun_undamageable,dx=1, dy=1, dz=1,tag=!gwp__shot,sort=nearest,limit=1] at @s run function guns:guns/flamebelcher/firing_penetrate-effects


# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.01 10 force
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0.01 5 force


# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 fire keep
execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^1 run function guns:guns/flamebelcher/firing_raycast_sonic