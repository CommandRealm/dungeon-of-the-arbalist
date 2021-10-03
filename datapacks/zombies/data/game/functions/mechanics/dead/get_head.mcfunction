##called to give us a head
clear @s player_head
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..10]
loot replace entity @s armor.head loot game:head