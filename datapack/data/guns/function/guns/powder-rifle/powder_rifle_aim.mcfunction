function guns:guns/main/aim_zoom
scoreboard players set @s gwp__gun-cooldown 10

## EFFECTS
playsound minecraft:item.crossbow.quick_charge_3 player @s ~ ~ ~ 1 0.9
# playsound minecraft:ui.button.click player @s ~ ~ ~ 1 0.9

# Change rifle model
execute if predicate guns:item/powder_rifle/powder_rifle_holding unless predicate guns:item/powder_rifle/powder_rifle_holding_offhand run item modify entity @s weapon.mainhand guns:item/powder_rifle/aiming
execute if predicate guns:item/powder_rifle/powder_rifle_holding_offhand run item modify entity @s weapon.offhand guns:item/powder_rifle/aiming
