##Starting the ender chest leaderboards

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 30


##Middle row
item replace entity @s enderchest.10 with orange_concrete_powder{clickable:1,HideFlags:255,display:{Name:'[{"text":"Hard","bold":true,"italic":false,"color":"red"}]'}}
item replace entity @s enderchest.11 with red_concrete_powder{clickable:1,HideFlags:255,display:{Name:'[{"text":"Super Hard","bold":true,"italic":false,"color":"dark_red"}]'}}
item replace entity @s enderchest.12 with brown_concrete_powder{clickable:1,HideFlags:255,display:{Name:'[{"text":"Hardcore","bold":true,"italic":false,"color":"#600011"}]'}}
item replace entity @s enderchest.13 with black_concrete_powder{clickable:1,HideFlags:255,display:{Name:'[{"text":"Nightmare","bold":true,"italic":false,"color":"#423031"}]'}}

item replace entity @s enderchest.15 with diamond_block{clickable:1,HideFlags:255,display:{Name:'[{"text":"Games Played","bold":true,"italic":false,"color":"aqua"}]'}}
item replace entity @s enderchest.16 with redstone_block{clickable:1,HideFlags:255,display:{Name:'[{"text":"Accuracy","bold":true,"italic":false,"color":"#ea1820"}]'}}


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

