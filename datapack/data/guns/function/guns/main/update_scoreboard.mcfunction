# checks for any players without scores; and sets them to remove nullified players
execute as @a unless entity @s[scores={gwp__gun-cooldown=-100..}] run scoreboard players set @s gwp__gun-cooldown -10
