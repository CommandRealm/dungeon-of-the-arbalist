##Starting the ender chest leaderboards

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 3


##Middle row
item replace entity @s enderchest.0 with cracked_stone_bricks{clickable:1,HideFlags:63,display:{Name:'[{"text":"Invaded Castle","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Only singleplayer games count.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.1 with warped_wart_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"Corrupted Kingdom","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Only singleplayer games count.","color":"gray","italic":false}]']}}


item replace entity @s enderchest.26 with gold_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"Parkour","bold":true,"italic":false,"color":"dark_green"}]'}}


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

