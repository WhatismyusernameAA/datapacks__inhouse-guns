# check if someone used carrot on stick (gun)
execute as @a[scores={gen_carrot=1..,gwp__gun-cooldown=-10..}] at @s run function guns:guns/main/has_bullet_check
scoreboard players set @a gen_carrot 0