##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_3] add unlocked
tag @e[type=minecraft:marker,tag=area_3,sort=random,limit=3] add temporary_tag
function game:enemy/spawn_enemy


##Resetting the door
forceload add 2941 136 2967 136
execute unless entity @e[type=minecraft:marker,tag=area_2,tag=unlocked] run clone 2956 79 133 2967 88 142 3017 76 98





##Marking doorways.
execute if block 3034 70 154 minecraft:spruce_planks unless entity @e[type=minecraft:marker,x=3034,y=70,z=154.0,distance=..5,tag=doorway] run summon minecraft:marker 3034 70 154.0 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute if block 3034 70 154 minecraft:spruce_planks as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment

execute if block 3024 77 102 minecraft:stripped_spruce_wood unless entity @e[type=minecraft:marker,x=3024,y=77,z=102,distance=..5,tag=doorway] run summon minecraft:marker 3022 77 104 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 400
execute if block 3024 77 102 minecraft:stripped_spruce_wood as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment

##Summoning key item
summon minecraft:item 3015 72 137 {Glowing:1b,Tags:["die_between_games"],Item:{id:"minecraft:tripwire_hook",components:{"minecraft:custom_name":'{"bold":true,"color":"gray","italic":false,"text":"Storage Key"}',"minecraft:lore":['{"color":"gray","italic":false,"text":"Can be used on one of two doors."}'],"minecraft:custom_data":{key_item:1b,key:"storage"}},count:1},Age:-32432}



tag @e[type=minecraft:marker,tag=doorway] add raycast

##Updating name
execute as @e[type=minecraft:marker,tag=doorway] at @s run function game:door/update_name


return 1