function guns:items/modifications/screwdriver/remove_attachments

item modify entity @s weapon.offhand guns:attachments/silencer/apply_silencer
item replace entity @s weapon.mainhand with air

playsound minecraft:block.wooden_button.click_on player @s ~ ~1 ~ 1 1
playsound minecraft:item.flintandsteel.use player @s ~ ~1 ~ 1 0.5

