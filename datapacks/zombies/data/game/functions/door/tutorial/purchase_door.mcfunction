##Called to purchase the door.

##Subtracting our treasure (unless we used a key.)
execute unless score @s drop_key matches 1.. run scoreboard players operation @s treasure -= @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] price_increment

##Subtracting door price remaining.
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s run scoreboard players operation @s price_left -= @s price_increment

##Making sure that the increment is still correct.
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left < @s price_increment run scoreboard players operation @s price_increment = @s price_left
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s run scoreboard players operation $calculate calculate = @s price_increment
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s run scoreboard players operation $calculate calculate -= @s price_left
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score $calculate calculate matches -2 run scoreboard players add @s price_increment 2

##Updating UI of purchasable door texts
tag @e[type=area_effect_cloud,tag=door_text,distance=..10] add temporary_tag
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if entity @s[tag=default_door] run function game:door/update_name


##Opening door 
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 run fill 14 82 -28 11 86 -28 air destroy
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 run fill 13 83 -27 12 85 -27 air destroy
execute as @e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 run kill @s
##Sound/particle
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1.25
particle block spruce_planks ~ ~2 ~ 2 4 0.75 0.5 100


tag @e[type=area_effect_cloud,tag=door_text,distance=..10] remove temporary_tag
