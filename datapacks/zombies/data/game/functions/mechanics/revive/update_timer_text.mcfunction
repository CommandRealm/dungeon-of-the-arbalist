##called to update the timer text

scoreboard players set @s revive_second 20

scoreboard players operation $calculate calculate = @s revive_time
scoreboard players operation $calculate calculate /= $20 number



loot spawn 0 0 0 loot game:name/revive_timer_text
execute positioned ~ ~1.75 ~ as @e[type=area_effect_cloud,tag=revive_time_text,sort=nearest,limit=1] at @s run data modify entity @s CustomName set from entity @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},x=0,y=0,z=0,distance=..5,sort=nearest,limit=1] Item.tag.display.Name
kill @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},x=0,y=0,z=0,distance=..5]

##if its 1 second
execute positioned ~ ~1.75 ~ if score $calculate calculate matches 1 run data modify entity @e[type=area_effect_cloud,tag=revive_time_text,sort=nearest,limit=1] CustomName set value [{"text":"- ","color":"gray"},{"text":"Revive within ","color":"green"},{"text":"40","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"},{"text":" -","color":"gray"}]
