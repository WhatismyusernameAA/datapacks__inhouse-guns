execute if predicate guns:item/attachments/has_long_barrel run function guns:items/modifications/long_barrel/give_attachment
execute if predicate guns:item/attachments/has_silencer run function guns:items/modifications/silencer/give_attachment
execute if predicate guns:item/attachments/has_bayonet run function guns:items/modifications/bayonet/give_attachment


item modify entity @s weapon.offhand guns:attachments/clear_attachments
