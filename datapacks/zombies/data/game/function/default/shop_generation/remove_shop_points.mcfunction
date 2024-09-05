##Called to remove shop points

##summon armor tand with banner.
summon minecraft:armor_stand ~ ~-2.47 ~ {Invisible:1b,Marker:1b,Tags:["die_between_games","banner_shop_marker"]}

execute as @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1]

execute store result score $rand_2 random run loot insert 0 1 0 loot random:color
execute if score $rand_2 random matches 0 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:white_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"black"}]]
execute if score $rand_2 random matches 1 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:orange_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"red"}]]
execute if score $rand_2 random matches 2 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:magenta_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"green"}]]
execute if score $rand_2 random matches 3 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:light_blue_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"brown"}]]
execute if score $rand_2 random matches 4 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:yellow_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"blue"}]]
execute if score $rand_2 random matches 5 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:lime_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"purple"}]]
execute if score $rand_2 random matches 6 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:pink_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"cyan"}]]
execute if score $rand_2 random matches 7 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:gray_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"light_gray"}]]
execute if score $rand_2 random matches 8 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:light_gray_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"gray"}]]
execute if score $rand_2 random matches 9 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:cyan_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"pink"}]]
execute if score $rand_2 random matches 10 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:purple_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"lime"}]]
execute if score $rand_2 random matches 11 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:blue_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"yellow"}]]
execute if score $rand_2 random matches 12 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:brown_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"light_blue"}]]
execute if score $rand_2 random matches 13 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:green_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"magenta"}]]
execute if score $rand_2 random matches 14 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:red_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"orange"}]]
execute if score $rand_2 random matches 15 run item replace entity @e[type=minecraft:armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with minecraft:black_banner[minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"white"}]]

##Killing nearby item points
kill @e[type=minecraft:marker,distance=..6,tag=shop_item_point,sort=nearest,limit=5]



##Killing ourself (@s is the shopkeeper marker)
kill @s
return 1