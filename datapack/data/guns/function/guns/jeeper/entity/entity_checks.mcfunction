particle electric_spark ~ ~0.7 ~ 0.03 0.03 0.03 0.01 1 normal

execute if entity @s[tag=inhouse_guns__jeeper_entity__primed] run function guns:guns/jeeper/entity/explode
execute unless entity @s[tag=inhouse_guns__jeeper_entity__primed] if entity @e[type=!#guns:jeeper_insensitive,distance=..3.5] run function guns:guns/jeeper/entity/prime
execute unless entity @s[tag=inhouse_guns__jeeper_entity__stuck] unless block ~0.6 ~0.6 ~0.6 #air unless block ~-0.6 ~0.6 ~-0.6 #air run function guns:guns/jeeper/entity/stick

