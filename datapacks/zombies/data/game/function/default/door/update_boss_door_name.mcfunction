##Called to update the name
##Loot table for item name
loot spawn 0 0 0 loot game:name/boss_door
execute as @e[type=minecraft:area_effect_cloud,tag=temporary_tag] at @s run data modify entity @s CustomName set from entity @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block"}}] Item.components."minecraft:custom_name"
kill @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,nbt={Item:{id:"minecraft:gold_block"}}]

##Summoning first part of message.
execute as @e[type=minecraft:area_effect_cloud,tag=temporary_tag] at @s run summon minecraft:area_effect_cloud ~ ~.25 ~ {Tags:["door_text","die_between_games","upper_door_text"],CustomNameVisible:0b,Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomName:'{"color":"#ab0909","text":"The door will become purchasable"}'}

##Removing tag
tag @e[type=minecraft:area_effect_cloud,tag=temporary_tag] remove temporary_tag
return 1