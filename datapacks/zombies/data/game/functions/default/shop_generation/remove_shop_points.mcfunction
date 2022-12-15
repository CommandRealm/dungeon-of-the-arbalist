##Called to remove shop points

##summon armor tand with banner.
summon armor_stand ~ ~-2.47 ~ {Invisible:1b,Marker:1b,Tags:["die_between_games","banner_shop_marker"]}

execute as @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1]

execute store result score $rand_2 random run loot insert 0 1 0 loot random:color
execute if score $rand_2 random matches 0 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with white_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:15}]}}
execute if score $rand_2 random matches 1 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:14}]}}
execute if score $rand_2 random matches 2 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with magenta_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:13}]}}
execute if score $rand_2 random matches 3 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with light_blue_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:12}]}}
execute if score $rand_2 random matches 4 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with yellow_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:11}]}}
execute if score $rand_2 random matches 5 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with lime_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:10}]}}
execute if score $rand_2 random matches 6 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with pink_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:9}]}}
execute if score $rand_2 random matches 7 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with gray_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:8}]}}
execute if score $rand_2 random matches 8 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with light_gray_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:7}]}}
execute if score $rand_2 random matches 9 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with cyan_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:6}]}}
execute if score $rand_2 random matches 10 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:5}]}}
execute if score $rand_2 random matches 11 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with blue_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:4}]}}
execute if score $rand_2 random matches 12 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with brown_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:3}]}}
execute if score $rand_2 random matches 13 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with green_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:2}]}}
execute if score $rand_2 random matches 14 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with red_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:1}]}}
execute if score $rand_2 random matches 15 run item replace entity @e[type=armor_stand,tag=banner_shop_marker,sort=nearest,limit=1] armor.head with black_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:0}]}}

##Killing nearby item points
kill @e[type=marker,distance=..6,tag=shop_item_point,limit=5,sort=nearest]



##Killing ourself (@s is the shopkeeper marker)
kill @s