function guns:items/modifications/screwdriver/remove_attachments

item modify entity @s weapon.offhand guns:attachments/momentum_channel/apply_momentum_channel
item replace entity @s weapon.mainhand with air

playsound minecraft:block.wooden_button.click_on player @s ~ ~1 ~ 1 1
playsound minecraft:block.trial_spawner.detect_player player @s ~ ~1 ~ 1 1

