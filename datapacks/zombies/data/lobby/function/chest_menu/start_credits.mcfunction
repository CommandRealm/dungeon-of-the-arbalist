##Starting the credits screen

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 13


##Middle row
item replace entity @s enderchest.12 with minecraft:chain_command_block[minecraft:custom_name='{"bold":false,"color":"white","extra":[{"bold":true,"color":"aqua","italic":false,"text":"Command "},{"bold":true,"color":"dark_aqua","italic":false,"text":"Realm "},{"bold":false,"color":"white","italic":false,"text":"Team"}],"italic":false,"text":"The "}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.14 with minecraft:player_head[minecraft:custom_name='{"bold":true,"color":"green","extra":[{"bold":false,"color":"gray","text":" / "},{"color":"red","text":"Other"}],"italic":false,"text":"Websites"}',minecraft:profile={id:[I;1830079298,1263619939,-1419560102,-1933383597],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjAxZTAxZmVkMTNmZTNmMjVhMDVlNzFjNDgyMTM2YzY4ZDVlM2VlODVmZjRhZjYyMTgzOTY1ZThlMzlhOWU5MCJ9fX0="}]},minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


##Back button
item replace entity @s enderchest.18 with minecraft:barrier[minecraft:custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Back"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
return 1