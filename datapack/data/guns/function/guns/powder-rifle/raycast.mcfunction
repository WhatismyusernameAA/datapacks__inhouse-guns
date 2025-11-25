# INTERACTIONS W. ENTITIES
execute positioned ~-0.01 ~-0.01 ~-0.01 as @e[type=!#guns:gun_undamageable,dx=0.01, dy=0.01, dz=0.01,tag=!gwp__shot,sort=nearest,limit=1] at @s run function guns:guns/powder-rifle/penetrate-effects

# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.01 1 force

# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
execute if block ~ ~ ~ minecraft:tnt run function guns:guns/powder-rifle/powder_rifle_interact_tnt
execute if block ~ ~ ~ minecraft:target run function guns:guns/powder-rifle/powder_rifle_interact_targetblock
execute if block ~ ~ ~ #guns:gun_breakable run fill ~ ~ ~ ~ ~ ~ air destroy
execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^0.8 if block ~ ~ ~ #guns:air_like_groups run function guns:guns/powder-rifle/raycast
execute positioned ^ ^ ^1 unless block ~ ~ ~ #guns:air_like_groups run function guns:guns/powder-rifle/firing_raycast_end
