##Summoning our bag of money
summon item 0 0 0 {Tags:["die_between_games"],PickupDelay:20,Item:{id:"minecraft:leather_helmet",Count:1b,tag:{treasure:1,treasure_amount:0}},Glowing:1b}

##tag
tag @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}},x=0,y=0,z=0,distance=..1,limit=1] add temporary_tag

##giving it our treasure score
execute store result entity @e[type=item,tag=temporary_tag,limit=1] Item.tag.treasure_amount int 1 run scoreboard players get @s treasure

##Moving item
execute store result entity @e[type=item,tag=temporary_tag,limit=1] Pos[0] double 0.01 run scoreboard players get @s death_pos_x
execute store result entity @e[type=item,tag=temporary_tag,limit=1] Pos[1] double 0.01 run scoreboard players get @s death_pos_y
execute store result entity @e[type=item,tag=temporary_tag,limit=1] Pos[2] double 0.01 run scoreboard players get @s death_pos_z

##joining team for glowing color
team join yellow @e[type=item,tag=temporary_tag,limit=1]


##Removing tag
tag @e[type=item,tag=temporary_tag] remove temporary_tag

##Resetting our treasure score
scoreboard players set @s treasure 0