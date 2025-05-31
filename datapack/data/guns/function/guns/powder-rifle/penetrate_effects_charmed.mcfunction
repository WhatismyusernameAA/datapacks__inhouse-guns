# makes me wonder, does this add on top of base damage or is it nullified (since it's lower) for non-armored entities?
damage @s 5 magic by @p[tag=gwp__shot]
damage @s 17 guns:gun_shot by @p[tag=gwp__shot]

playsound minecraft:block.amethyst_cluster.break player @p[tag=gwp__shot] ~ ~1 ~ 20 1.2

particle enchanted_hit ~ ~1.35 ~ 0.1 0.1 0.1 1 10 normal