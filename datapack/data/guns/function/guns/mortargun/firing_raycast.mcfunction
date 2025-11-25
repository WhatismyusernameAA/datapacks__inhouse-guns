# INTERACTIONS W. ENTITIES
## so turns out I've been doing dx/dy/dz wrong.. since it's a box selector I need to add an offset!
execute positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=!#guns:gun_undamageable,dx=0.8, dy=0.8, dz=0.8,tag=!gwp__shot,sort=nearest] at @s run function guns:guns/mortargun/firing_penetrate-effects

# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:smoke ~ ~ ~ 0.3 0.3 0.3 0.01 10 normal

# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
execute if block ~ ~ ~ #guns:interactable run function guns:guns/mortargun/firing_interact_select
execute if block ~ ~ ~ #guns:gun_breakable run fill ~ ~ ~ ~ ~ ~ air destroy
execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^1 if block ~ ~ ~ #guns:air_like_groups run function guns:guns/mortargun/firing_raycast
execute positioned ^ ^ ^1 unless block ~ ~ ~ #guns:air_like_groups run function guns:guns/mortargun/firing_raycast_end
