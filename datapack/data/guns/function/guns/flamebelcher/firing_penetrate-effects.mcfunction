damage @s 10 in_fire by @p[tag=gwp__shot]
data modify entity @s Fire set value 100

# apply charmed damage
execute if entity @s[type=#minecraft:undead] if entity @p[tag=gwp__shot,predicate=guns:item/attachments/has_undead_charm] run function guns:guns/revolver/firing_penetrate_effects_charmed
execute if entity @s[type=#minecraft:illager] if entity @p[tag=gwp__shot,predicate=guns:item/attachments/has_amber_charm] run function guns:guns/revolver/firing_penetrate_effects_charmed

# ignite creepers on hit
data modify entity @s ignited set value 1b

playsound minecraft:entity.player.hurt_on_fire player @a ~ ~1 ~ 1 1