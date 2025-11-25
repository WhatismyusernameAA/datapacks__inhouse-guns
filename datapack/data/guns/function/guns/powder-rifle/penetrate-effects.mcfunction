# apply damage to entity (from person who shot gun)
## GRRR I WISH IT WOULD NOT IGNORE SHIELDS BECAUSE NOW IT'S TOO OP..
## BUT IT DOESNT SO THATS GOOD

# damage entity
damage @s 12 guns:gun_shot by @p[tag=gwp__shot]

# apply charmed damage
execute if entity @s[type=#minecraft:undead] if entity @p[tag=gwp__shot,predicate=guns:item/attachments/has_undead_charm] run function guns:guns/powder-rifle/penetrate_effects_charmed
execute if entity @s[type=#minecraft:illager] if entity @p[tag=gwp__shot,predicate=guns:item/attachments/has_amber_charm] run function guns:guns/powder-rifle/penetrate_effects_charmed
# execute if entity @s[type=minecraft:warden] if entity @p[tag=gwp__shot,predicate=guns:item/attachments/has_sculk_piercer] run function guns:guns/powder-rifle/penetrate_effects_charmed

# crit effects
execute if entity @p[tag=gwp__shot,distance=40..] run function guns:guns/powder-rifle/penetrate-effects-crit

# decrease range per shot hit
# scoreboard players remove @p[tag=gwp__shot] gwp__gun-range 20

# ignite creepers on hit
data modify entity @s ignited set value 1b

# EFFECTS
particle explosion ~ ~1.35 ~ 0.1 0.1 0.1 1 1 normal

playsound minecraft:item.trident.hit player @a ~ ~1 ~ 1 1
playsound minecraft:entity.player.attack.strong player @a ~ ~1 ~ 1 1
