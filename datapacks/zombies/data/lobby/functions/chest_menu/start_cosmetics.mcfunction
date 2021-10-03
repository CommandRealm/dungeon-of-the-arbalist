##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 1


##Middle row
item replace entity @s enderchest.10 with name_tag{clickable:1,HideFlags:63,display:{Name:'[{"text":"Titles","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"Only unlocked on the Dungeon of the Arbalist map.","color":"gray","italic":false}]','[{"text":"Must be played on ","italic":false,"color":"gray"},{"text":"Easy","bold":true,"color":"green"},{"text":" or higher.","color":"gray"}]']}}

item replace entity @s enderchest.12 with leather_chestplate{clickable:1,HideFlags:63,display:{Name:'[{"text":"Armor","bold":true,"italic":false,"color":"gold"}]'}}

item replace entity @s enderchest.14 with brick{clickable:1,HideFlags:63,display:{Name:'[{"text":"Punch","bold":true,"italic":false,"color":"red"},{"text":" Kill ","color":"dark_red"},{"text":"Effects","color":"green"}]'}}

item replace entity @s enderchest.16 with gold_nugget{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,HideFlags:63,display:{Name:'[{"text":"Unlocks","color":"gold","bold":true,"italic":false}]'}}

item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

