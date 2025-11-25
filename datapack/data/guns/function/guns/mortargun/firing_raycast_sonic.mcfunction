# INTERACTIONS W. ENTITIES
## so turns out I've been doing dx/dy/dz wrong.. since it's a box selector I need to add an offset!
execute positioned ~-2 ~-2 ~-2 as @e[type=!#guns:gun_undamageable,dx=2, dy=2, dz=2,tag=!gwp__shot,sort=nearest] at @s run function guns:guns/mortargun/firing_penetrate-effects

# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:sonic_boom ~ ~ ~ 0.5 0.5 0.5 0.01 1 normal
particle minecraft:scrape ~ ~ ~ 1 1 1 1 3 normal

# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
execute if block ~ ~ ~ #guns:interactable run function guns:guns/mortargun/firing_interact_select
execute if block ~ ~ ~ #guns:gun_breakable run fill ~ ~ ~ ~ ~ ~ air destroy

execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^1 run function guns:guns/mortargun/firing_raycast_sonic