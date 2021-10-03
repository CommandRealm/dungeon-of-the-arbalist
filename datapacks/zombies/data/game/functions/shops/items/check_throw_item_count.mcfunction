##called to check our thrown item count and give us back the proper number of items.

##storing count in an objective
execute store result score $calculate calculate run data get entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1] Item.Count 1
scoreboard players remove $calculate calculate 1

setblock 0 2 0 air
setblock 0 2 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 2 0 Items[{Slot:0b}].id set from entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1] Item.id
data modify block 0 2 0 Items[{Slot:0b}].tag set from entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1] Item.tag
execute store result block 0 2 0 Items[{Slot:0b}].Count byte 1 run scoreboard players get $calculate calculate 


##giving item back
execute unless block 0 2 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot give @s mine 0 2 0 stone{drop_contents:true}


##calling throw item now
function game:shops/items/throw_item