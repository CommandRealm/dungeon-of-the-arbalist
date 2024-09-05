##called to give us a head
clear @s minecraft:player_head
kill @e[type=minecraft:item,distance=..10,nbt={Item:{id:"minecraft:player_head"}}]
loot replace entity @s armor.head loot game:head
return 1