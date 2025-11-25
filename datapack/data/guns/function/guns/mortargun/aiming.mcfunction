function guns:guns/main/aim_zoom
scoreboard players set @s gwp__gun-cooldown 18

## EFFECTS
playsound minecraft:item.crossbow.quick_charge_3 player @s ~ ~ ~ 1 0.9
playsound minecraft:block.iron_trapdoor.open player @s ~ ~ ~ 1 0.8

# playsound minecraft:ui.button.click player @s ~ ~ ~ 1 0.9

# Change rifle model
execute if predicate guns:item/guns/mortargun/holding unless predicate guns:item/guns/mortargun/holding_offhand run item modify entity @s weapon.mainhand guns:item/guns/aiming
execute if predicate guns:item/guns/mortargun/holding_offhand run item modify entity @s weapon.offhand guns:item/guns/aiming
