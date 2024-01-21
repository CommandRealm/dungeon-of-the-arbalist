##Starting the ender chest leaderboards

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 3


##Middle row
item replace entity @s enderchest.10 with cracked_stone_bricks{clickable:1,HideFlags:255,display:{Name:'[{"text":"Invaded Castle","bold":true,"italic":false,"color":"gold"}]'}}
item replace entity @s enderchest.12 with warped_wart_block{clickable:1,HideFlags:255,display:{Name:'[{"text":"Corrupted Kingdom","bold":true,"italic":false,"color":"dark_aqua"}]'}}
item replace entity @s enderchest.14 with polished_andesite{clickable:1,HideFlags:255,display:{Name:'[{"text":"The Dungeon","bold":true,"italic":false,"color":"green"}]'}}
item replace entity @s enderchest.16 with gold_block{clickable:1,HideFlags:255,display:{Name:'[{"text":"Parkour","bold":true,"italic":false,"color":"dark_green"}]'}}


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}
item replace entity @s enderchest.26 with lime_dye{clickable:1,HideFlags:255,display:{Name:'[{"text":"Next","bold":true,"italic":false,"color":"#00ff00"}]'}}

