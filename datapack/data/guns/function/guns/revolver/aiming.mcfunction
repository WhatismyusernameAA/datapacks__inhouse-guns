function guns:guns/main/aim_zoom
scoreboard players set @s gwp__gun-cooldown 10

## EFFECTS
playsound minecraft:item.crossbow.quick_charge_3 player @s ~ ~ ~ 1 0.9
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.2

# playsound minecraft:ui.button.click player @s ~ ~ ~ 1 0.9

# Change rifle model
execute if predicate guns:item/guns/revolver/holding unless predicate guns:item/guns/revolver/holding_offhand run item modify entity @s weapon.mainhand guns:item/guns/revolver/aiming
execute if predicate guns:item/guns/revolver/holding_offhand run item modify entity @s weapon.offhand guns:item/guns/revolver/aiming
