function guns:items/modifications/screwdriver/remove_attachments

item modify entity @s weapon.offhand guns:attachments/undead_charm/apply_undead_charm
item replace entity @s weapon.mainhand with air

playsound minecraft:block.wooden_button.click_on player @s ~ ~1 ~ 1 1
playsound minecraft:block.wood.place player @s ~ ~1 ~ 1 1
playsound minecraft:entity.zombie_villager.cure player @s ~ ~1 ~ 0.4 2


