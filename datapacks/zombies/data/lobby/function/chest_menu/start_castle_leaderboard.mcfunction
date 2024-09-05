

##Starting the ender chest castle leaderboard

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 16



##Placements




##
setblock 0 2 0 minecraft:air
setblock 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:structure_void",count:1,Slot:0b},{id:"minecraft:structure_void",count:1,Slot:1b},{id:"minecraft:structure_void",count:1,Slot:2b},{id:"minecraft:structure_void",count:1,Slot:3b},{id:"minecraft:structure_void",count:1,Slot:4b},{id:"minecraft:structure_void",count:1,Slot:5b},{id:"minecraft:structure_void",count:1,Slot:6b},{id:"minecraft:structure_void",count:1,Slot:7b},{id:"minecraft:structure_void",count:1,Slot:8b},{id:"minecraft:structure_void",count:1,Slot:9b},{id:"minecraft:structure_void",count:1,Slot:10b},{id:"minecraft:structure_void",count:1,Slot:11b},{id:"minecraft:structure_void",count:1,Slot:12b},{id:"minecraft:structure_void",count:1,Slot:13b},{id:"minecraft:structure_void",count:1,Slot:14b},{id:"minecraft:structure_void",count:1,Slot:15b},{id:"minecraft:structure_void",count:1,Slot:16b},{id:"minecraft:structure_void",count:1,Slot:17b},{id:"minecraft:structure_void",count:1,Slot:18b},{id:"minecraft:structure_void",count:1,Slot:19b},{id:"minecraft:structure_void",count:1,Slot:20b},{id:"minecraft:structure_void",count:1,Slot:21b},{id:"minecraft:structure_void",count:1,Slot:22b},{id:"minecraft:structure_void",count:1,Slot:23b},{id:"minecraft:structure_void",count:1,Slot:24b},{id:"minecraft:structure_void",count:1,Slot:25b},{id:"minecraft:structure_void",count:1,Slot:26b}]}
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:3b}].id set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:3b}].components set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].components
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:3b}].components."minecraft:custom_name" set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] CustomName
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:3b}].components."minecraft:custom_data".clickable set value 1
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:3b}].components."minecraft:custom_data".invalid_click set value 1

execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:12b}].id set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].id
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:12b}].components set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].components
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:12b}].components."minecraft:custom_name" set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=2},limit=1] CustomName
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:12b}].components."minecraft:custom_data".clickable set value 1
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:12b}].components."minecraft:custom_data".invalid_click set value 1

execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:21b}].id set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].id
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:21b}].components set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].components
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:21b}].components."minecraft:custom_name" set from entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=3},limit=1] CustomName
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:21b}].components."minecraft:custom_data".clickable set value 1
execute if data entity @e[type=minecraft:armor_stand,tag=castle_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 2 0 Items[{Slot:21b}].components."minecraft:custom_data".invalid_click set value 1

##If there is no placements.
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:3b}] run item replace block 0 2 0 container.3 with minecraft:iron_bars[minecraft:custom_name='{"bold":true,"color":"gold","extra":[{"bold":false,"color":"gold","text":" - "},{"bold":false,"color":"red","italic":false,"text":"Unclaimed"}],"italic":false,"text":"1st"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:12b}] run item replace block 0 2 0 container.12 with minecraft:iron_bars[minecraft:custom_name='{"bold":true,"color":"#a5afb8","extra":[{"bold":false,"color":"gold","text":" - "},{"bold":false,"color":"red","italic":false,"text":"Unclaimed"}],"italic":false,"text":"2nd"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:21b}] run item replace block 0 2 0 container.21 with minecraft:iron_bars[minecraft:custom_name='{"bold":true,"color":"#cd7e32","extra":[{"bold":false,"color":"gold","text":" - "},{"bold":false,"color":"red","italic":false,"text":"Unclaimed"}],"italic":false,"text":"3rd"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
##Middle row
item replace block 0 2 0 container.13 with minecraft:cracked_stone_bricks[minecraft:custom_name='{"bold":true,"color":"dark_green","italic":false,"text":"Invaded Castle"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]


##Getting our time.
tag @s remove castle
clear @s minecraft:tipped_arrow
scoreboard players operation @s run = @s castle_score
function game:adventure/calculate_time
##Putting it on a sign, so it's easier to read off later.
execute if score $minute calculate matches 0 run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'
execute if score $minute calculate matches 1.. if score $second calculate matches 10.. run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow","type":"score"},{"text":":","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'
execute if score $minute calculate matches 1.. if score $second calculate matches ..9 run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow","type":"score"},{"text":":","color":"gold","type":"text"},{"text":"0","color":"yellow","type":"text"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'

summon minecraft:area_effect_cloud 0 0 0 {Tags:["die_soon"]}

data modify entity @e[type=minecraft:area_effect_cloud,tag=die_soon,limit=1] CustomName set from block 0 10 0 front_text.messages[0]

loot replace block 0 2 0 container.14 loot leaderboards:castle_highscore
execute if score @s castle_difficult matches -1 run data modify block 0 2 0 Items[{Slot:14b}].components."minecraft:lore" append value '{"bold":true,"color":"white","italic":false,"text":"Training"}'
execute if score @s castle_difficult matches 0 run data modify block 0 2 0 Items[{Slot:14b}].components."minecraft:lore" append value '{"bold":true,"color":"dark_green","italic":false,"text":"Super Easy"}'
execute if score @s castle_difficult matches 1 run data modify block 0 2 0 Items[{Slot:14b}].components."minecraft:lore" append value '{"bold":true,"color":"green","italic":false,"text":"Easy"}'
execute if score @s castle_difficult matches 2 run data modify block 0 2 0 Items[{Slot:14b}].components."minecraft:lore" append value '{"bold":true,"color":"yellow","italic":false,"text":"Medium"}'
execute if score @s castle_difficult matches 3 run data modify block 0 2 0 Items[{Slot:14b}].components."minecraft:lore" append value '{"bold":true,"color":"red","italic":false,"text":"Hard"}'
execute if score @s castle_difficult matches 4 run data modify block 0 2 0 Items[{Slot:14b}].components."minecraft:lore" append value '{"bold":true,"color":"dark_red","italic":false,"text":"Super Hard"}'
execute if score @s castle_difficult matches 5 run data modify block 0 2 0 Items[{Slot:14b}].components."minecraft:lore" append value '{"bold":true,"color":"#600011","italic":false,"text":"Hardcore"}'
execute if score @s castle_difficult matches 6 run data modify block 0 2 0 Items[{Slot:14b}].components."minecraft:lore" append value '{"bold":true,"color":"#423031","italic":false,"text":"Nightmare"}'

execute if score @s castle_score matches 1000000000 run item replace block 0 2 0 container.14 with minecraft:iron_bars[minecraft:custom_name='{"color":"gray","extra":[{"color":"red","text":"You don\'t have a score yet!"}],"italic":false,"text":"- "}',minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]

kill @e[type=minecraft:area_effect_cloud,tag=die_soon]

item replace block 0 2 0 container.18 with minecraft:barrier[minecraft:custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Back"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]



##Clearing structure voids
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:0b}] run item replace block 0 2 0 container.0 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:1b}] run item replace block 0 2 0 container.1 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:2b}] run item replace block 0 2 0 container.2 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:3b}] run item replace block 0 2 0 container.3 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:4b}] run item replace block 0 2 0 container.4 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:5b}] run item replace block 0 2 0 container.5 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:6b}] run item replace block 0 2 0 container.6 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:7b}] run item replace block 0 2 0 container.7 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:8b}] run item replace block 0 2 0 container.8 with minecraft:air

execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:9b}] run item replace block 0 2 0 container.9 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:10b}] run item replace block 0 2 0 container.10 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:11b}] run item replace block 0 2 0 container.11 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:12b}] run item replace block 0 2 0 container.12 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:13b}] run item replace block 0 2 0 container.13 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:14b}] run item replace block 0 2 0 container.14 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:15b}] run item replace block 0 2 0 container.15 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:16b}] run item replace block 0 2 0 container.16 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:17b}] run item replace block 0 2 0 container.17 with minecraft:air

execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:18b}] run item replace block 0 2 0 container.18 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:19b}] run item replace block 0 2 0 container.19 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:20b}] run item replace block 0 2 0 container.20 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:21b}] run item replace block 0 2 0 container.21 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:22b}] run item replace block 0 2 0 container.22 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:23b}] run item replace block 0 2 0 container.23 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:24b}] run item replace block 0 2 0 container.24 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:25b}] run item replace block 0 2 0 container.25 with minecraft:air
execute if data block 0 2 0 Items[{id:"minecraft:structure_void",Slot:26b}] run item replace block 0 2 0 container.26 with minecraft:air


loot replace entity @s enderchest.0 mine 0 2 0 minecraft:stone[minecraft:custom_data={drop_contents:1b}]


return 1