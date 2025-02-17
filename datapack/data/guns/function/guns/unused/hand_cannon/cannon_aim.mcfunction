function guns:guns/main/aim_zoom
scoreboard players set @s gwp__gun-cooldown 15

## EFFECTS
playsound minecraft:item.crossbow.quick_charge_3 player @s ~ ~ ~ 1 0.9
playsound minecraft:block.anvil.place player @s ~ ~ ~ 1 1.2

# playsound minecraft:ui.button.click player @s ~ ~ ~ 1 0.9

# Change rifle model
execute if predicate guns:item/scattergun/scattergun_holding unless predicate guns:item/scattergun/scattergun_holding_offhand run item modify entity @s weapon.mainhand guns:item/scattergun/aiming
execute if predicate guns:item/scattergun/scattergun_holding_offhand run item modify entity @s weapon.offhand guns:item/scattergun/aiming
