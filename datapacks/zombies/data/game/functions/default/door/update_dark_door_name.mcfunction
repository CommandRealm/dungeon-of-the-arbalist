##Called to update the name
##Loot table for item name
loot spawn 0 0 0 loot game:name/dark_door
execute as @e[type=area_effect_cloud,tag=temporary_tag] at @s run data modify entity @s CustomName set from entity @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},x=0,y=0,z=0,distance=..5,sort=nearest,limit=1] Item.tag.display.Name
kill @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},x=0,y=0,z=0,distance=..5]

##Summoning first part of message.
execute as @e[type=area_effect_cloud,tag=temporary_tag] at @s run summon area_effect_cloud ~ ~.25 ~ {Tags:["door_text","die_between_games","upper_door_text"],CustomNameVisible:0b,Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomName:'[{"text":"The door will become purchasable","color":"#b94a4f"}]'}

tag @e[type=area_effect_cloud,tag=temporary_tag] remove temporary_tag

