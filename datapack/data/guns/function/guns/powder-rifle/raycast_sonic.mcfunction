# INTERACTIONS W. ENTITIES
execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=!#guns:gun_undamageable,dx=0.05, dy=0.05, dz=0.05,tag=!gwp__shot,sort=nearest,limit=1] at @s run function guns:guns/powder-rifle/penetrate-effects

# detract from range
scoreboard players remove @s gwp__gun-range 1

# PARTICLES
particle minecraft:sculk_charge_pop ~ ~ ~ 0.05 0.05 0.05 0.01 1 force

# INTERACTIONS W. BLOCKS
# break gun-breakable blocks, pass through air-like blocks
execute if block ~ ~ ~ minecraft:tnt run function guns:guns/powder-rifle/powder_rifle_interact_tnt
execute if block ~ ~ ~ minecraft:target run function guns:guns/powder-rifle/powder_rifle_interact_targetblock
execute if block ~ ~ ~ #guns:gun_breakable run fill ~ ~ ~ ~ ~ ~ air destroy
execute if score @s gwp__gun-range matches 0.. positioned ^ ^ ^1.2 run function guns:guns/powder-rifle/raycast_sonic