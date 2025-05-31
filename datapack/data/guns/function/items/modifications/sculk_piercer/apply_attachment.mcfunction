function guns:items/modifications/screwdriver/remove_attachments

item modify entity @s weapon.offhand guns:attachments/sculk_piercer/apply_sculk_piercer
item replace entity @s weapon.mainhand with air

playsound minecraft:block.wooden_button.click_on player @s ~ ~1 ~ 1 1
playsound minecraft:block.wood.place player @s ~ ~1 ~ 1 1
playsound minecraft:block.sculk_sensor.clicking player @s ~ ~1 ~ 0.4 1


