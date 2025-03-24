# check if someone used carrot on stick (gun)
execute as @a[scores={gen_carrot=1..}] at @s run function guns:right_click/right_click_select
scoreboard players set @a gen_carrot 0