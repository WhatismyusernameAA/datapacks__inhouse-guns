# copied from rifle code

damage @s 10 guns:gun_shot by @p[tag=gwp__shot]

# decrease range per shot hit
# scoreboard players remove @p[tag=gwp__shot] gwp__gun-range 20

# ignite creepers on hit
data modify entity @s ignited set value 1b

# EFFECTS
particle explosion ~ ~1.35 ~ 0.1 0.1 0.1 1 1 normal

playsound minecraft:item.trident.hit player @a ~ ~1 ~ 1 1
playsound minecraft:item.axe.strip player @a ~ ~1 ~ 1 1
