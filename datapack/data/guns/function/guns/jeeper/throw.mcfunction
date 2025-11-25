tag @s add _fling
execute positioned ~ ~1.5 ~ run summon armor_stand ^ ^ ^0.3 {Small:1b,Tags:["inhouse_guns__jeeper_entity","_init"],Invisible:1b,equipment:{head:{id:"minecraft:command_block",components:{custom_model_data:{strings:["inhouse_guns:jeeper_bomb"]}}}}}
execute as @e[type=minecraft:armor_stand,distance=..1.8,tag=inhouse_guns__jeeper_entity,tag=_init,sort=nearest] run function guns:guns/jeeper/fling
tag @s remove _fling

advancement revoke @s only guns:triggers/used_jeeper
