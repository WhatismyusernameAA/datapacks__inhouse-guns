execute if predicate guns:item/attachments/has_long_barrel run function guns:items/modifications/long_barrel/give_attachment
execute if predicate guns:item/attachments/has_silencer run function guns:items/modifications/silencer/give_attachment
execute if predicate guns:item/attachments/has_bayonet run function guns:items/modifications/bayonet/give_attachment
execute if predicate guns:item/attachments/has_undead_charm run function guns:items/modifications/undead_charm/give_attachment
execute if predicate guns:item/attachments/has_amber_charm run function guns:items/modifications/amber_charm/give_attachment
execute if predicate guns:item/attachments/has_sculk_piercer run function guns:items/modifications/sculk_piercer/give_attachment

item modify entity @s weapon.offhand guns:attachments/clear_attachments
