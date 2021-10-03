##Called to update the name
##Loot table for item name
loot spawn 0 0 0 loot game:name/purchasable_door
execute as @e[type=area_effect_cloud,tag=temporary_tag,distance=..8] at @s run data modify entity @s CustomName set from entity @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},x=0,y=0,z=0,distance=..5,sort=nearest,limit=1] Item.tag.display.Name
kill @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},x=0,y=0,z=0,distance=..5]

##Removing tag
tag @e[type=area_effect_cloud,tag=temporary_tag] remove temporary_tag