##Starting the ender chest menu

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 0


##Middle row
item replace entity @s enderchest.0 with turtle_helmet{clickable:1,HideFlags:63,display:{Name:'[{"text":"Cosmetics","bold":true,"italic":false,"color":"gray"}]'}}

item replace entity @s enderchest.3 with book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Tutorial","bold":true,"italic":false,"color":"green"}]'}}

item replace entity @s enderchest.6 with lodestone{clickable:1,HideFlags:63,display:{Name:'[{"text":"Personal ","bold":true,"italic":false,"color":"gold"},{"text":"Options","bold":true,"italic":false,"color":"yellow"}]'}}

item replace entity @s enderchest.8 with paper{clickable:1,HideFlags:63,display:{Name:'[{"text":"Leaderboards","bold":true,"italic":false,"color":"dark_purple"}]'}}

item replace entity @s enderchest.19 with writable_book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Journal","bold":true,"italic":false,"color":"white"}]'}}


item replace entity @s enderchest.22 with nether_star{clickable:1,HideFlags:63,display:{Name:'[{"text":"Statistics","bold":true,"italic":false,"color":"red"}]'}}

item replace entity @s enderchest.25 with command_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"Credits","bold":true,"italic":false,"color":"aqua"}]'}}

execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] run item replace entity @s enderchest.26 with written_book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Titles","bold":true,"italic":false,"color":"white"}]'}}




