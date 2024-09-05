##Starting the ender chest leaderboards

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 3


##Middle row
item replace entity @s enderchest.0 with minecraft:cracked_stone_bricks[minecraft:custom_name='{"bold":true,"color":"dark_green","italic":false,"text":"Invaded Castle"}',minecraft:lore=['{"color":"gray","italic":false,"text":"Only singleplayer games count."}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s enderchest.1 with minecraft:warped_wart_block[minecraft:custom_name='{"bold":true,"color":"dark_green","italic":false,"text":"Corrupted Kingdom"}',minecraft:lore=['{"color":"gray","italic":false,"text":"Only singleplayer games count."}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


item replace entity @s enderchest.26 with minecraft:gold_block[minecraft:custom_name='{"bold":true,"color":"dark_green","italic":false,"text":"Parkour"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


item replace entity @s enderchest.18 with minecraft:barrier[minecraft:custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Back"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


return 1