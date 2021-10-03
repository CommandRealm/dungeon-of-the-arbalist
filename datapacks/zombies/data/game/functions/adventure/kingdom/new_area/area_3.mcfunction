##Called when area_2 is opened

tag @e[type=marker,tag=area_3] add unlocked
tag @e[type=marker,tag=area_3,sort=random,limit=3] add temporary_tag
function game:enemy/spawn_enemy


##Resetting the door
forceload add 2941 136 2967 136
execute unless entity @e[type=marker,tag=area_2,tag=unlocked] run clone 2956 79 133 2967 88 142 3017 76 98





##Marking doorways.
execute if block 3034 70 154 minecraft:spruce_planks unless entity @e[type=area_effect_cloud,tag=doorway,x=3034,y=70,z=154.0,distance=..5] run summon area_effect_cloud 3034 70 154.0 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute if block 3034 70 154 minecraft:spruce_planks as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment

execute if block 3024 77 102 stripped_spruce_wood unless entity @e[type=area_effect_cloud,tag=doorway,x=3024,y=77,z=102,distance=..5] run summon area_effect_cloud 3022 77 104 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 400
execute if block 3024 77 102 stripped_spruce_wood as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment

##Summoning key item
summon item 3015 72 137 {Glowing:1b,Tags:["die_between_games"],Item:{id:"minecraft:tripwire_hook",Count:1b,tag:{key_item:1b,key:"storage",display:{Name:'[{"text":"Storage Key","italic":false,"color":"gray","bold":true}]',Lore:['[{"text":"Can be used on one of two doors.","color":"gray","italic":false}]']}}},Age:-32432}



tag @e[type=area_effect_cloud,tag=doorway] add raycast

##Updating name
execute as @e[type=area_effect_cloud,tag=doorway] at @s run function game:door/update_name

