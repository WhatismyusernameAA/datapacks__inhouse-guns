damage @s 12 guns:gun_shot by @p[tag=gwp__shot]

# apply charmed damage
execute if entity @s[type=#minecraft:undead] if entity @p[tag=gwp__shot,predicate=guns:item/attachments/has_undead_charm] run function guns:guns/revolver/firing_penetrate_effects_charmed
execute if entity @s[type=#minecraft:illager] if entity @p[tag=gwp__shot,predicate=guns:item/attachments/has_amber_charm] run function guns:guns/revolver/firing_penetrate_effects_charmed

# apply crit damage
# execute if entity @p[tag=gwp__shot,distance=..5] run function guns:guns/revolver/firing_penetrate-effects_crit

# ignite creepers on hit
data modify entity @s ignited set value 1b
data modify entity @s Fuse set value 20

playsound minecraft:entity.generic.big_fall player @a ~ ~1 ~ 1 1.5

particle explosion ~ ~1.35 ~ 0.1 0.1 0.1 1 1 normal
