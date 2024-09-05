##Starting the ender chest menu

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 0


##Middle row
item replace entity @s enderchest.0 with minecraft:turtle_helmet[minecraft:custom_name='{"bold":true,"color":"gray","italic":false,"text":"Cosmetics"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.3 with minecraft:book[minecraft:custom_name='{"bold":true,"color":"green","italic":false,"text":"Tutorial"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.6 with minecraft:lodestone[minecraft:custom_name='{"bold":true,"color":"gold","extra":[{"bold":true,"color":"yellow","italic":false,"text":"Options"}],"italic":false,"text":"Personal "}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.8 with minecraft:paper[minecraft:custom_name='{"bold":true,"color":"dark_purple","italic":false,"text":"Leaderboards"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.19 with minecraft:writable_book[minecraft:custom_name='{"bold":true,"color":"white","italic":false,"text":"Journal"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


item replace entity @s enderchest.22 with minecraft:nether_star[minecraft:custom_name='{"bold":true,"color":"red","italic":false,"text":"Statistics"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.25 with minecraft:command_block[minecraft:custom_name='{"bold":true,"color":"aqua","italic":false,"text":"Credits"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] run item replace entity @s enderchest.26 with minecraft:written_book[minecraft:custom_name='{"bold":true,"color":"white","italic":false,"text":"Titles"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]





return 1