# tick down gun_cooldown when aiming, tick up cooldown when not aiming
scoreboard players remove @a[tag=gwp__aiming,scores={gwp__gun-cooldown=-9..}] gwp__gun-cooldown 1
scoreboard players add @a[scores={gwp__gun-cooldown=..-11}] gwp__gun-cooldown 1

# update aiming for all players
execute as @a[tag=gwp__aiming] at @s run function guns:guns/main/aim_update