# checks for any players without scores; and sets them to remove nullified players
execute as @a unless entity @s[scores={gwp__gun-cooldown=-100..}] run scoreboard players set @s gwp__gun-cooldown -10

# check if someone used carrot on stick (gun)
execute as @a[scores={gen_carrot=1..,gwp__gun-cooldown=-10..}] at @s run function guns:guns/main/has_bullet_check
scoreboard players set @a gen_carrot 0