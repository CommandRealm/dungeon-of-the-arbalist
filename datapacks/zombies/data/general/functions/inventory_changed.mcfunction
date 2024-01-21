# called when we have an inventory change
##checking armor
execute as @a[team=!enemy] at @s unless entity @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b}]}] run function game:mechanics/get_armor

advancement revoke @s only general:inventory_changed