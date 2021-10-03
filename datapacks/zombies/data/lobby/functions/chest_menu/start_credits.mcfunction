##Starting the credits screen

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 13


##Middle row
item replace entity @s enderchest.12 with chain_command_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"The ","bold":false,"italic":false,"color":"white"},{"text":"Command ","bold":true,"italic":false,"color":"aqua"},{"text":"Realm ","bold":true,"italic":false,"color":"dark_aqua"},{"text":"Team","bold":false,"italic":false,"color":"white"}]'}}

item replace entity @s enderchest.14 with player_head{clickable:1,HideFlags:63,display:{Name:'[{"text":"Websites","bold":true,"italic":false,"color":"green"},{"text":" / ","color":"gray","bold":false},{"text":"Other","color":"red"}]'},SkullOwner:{Id:[I;1830079298,1263619939,-1419560102,-1933383597],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjAxZTAxZmVkMTNmZTNmMjVhMDVlNzFjNDgyMTM2YzY4ZDVlM2VlODVmZjRhZjYyMTgzOTY1ZThlMzlhOWU5MCJ9fX0="}]}}}


##Back button
item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}