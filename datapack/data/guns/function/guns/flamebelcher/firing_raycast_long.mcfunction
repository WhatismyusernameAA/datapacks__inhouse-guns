# INTERACTIONS W. ENTITIES
## so turns out I've been doing dx/dy/dz wrong.. since it's a box selector I need to add an offset!
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#guns:gun_undamageable,dx=0.5, dy=0.5, dz=0.5,tag=!gwp__shot,sort=nearest,limit=1] at @s run function guns:guns/flamebelcher/firing_penetrate-effects

# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 5 force
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.01 2 force


# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
fill ~-0.2 ~-0.2 ~-0.2 ~0.2 ~0.2 ~0.2 fire keep
execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^1 if block ~ ~ ~ #guns:air_like_groups run function guns:guns/flamebelcher/firing_raycast_long