##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 99


##Middle row
item replace entity @s[tag=has_test] enderchest.0 with minecraft:book[minecraft:custom_name='{"bold":false,"color":"dark_green","italic":false,"text":"(Tester)"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_help] enderchest.1 with minecraft:book[minecraft:custom_name='{"bold":false,"color":"green","italic":false,"text":"[Helper]"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_bld] enderchest.2 with minecraft:book[minecraft:custom_name='{"bold":false,"color":"blue","italic":false,"text":"{Builder}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_srbld] enderchest.3 with minecraft:book[minecraft:custom_name='{"bold":false,"color":"dark_blue","italic":false,"text":"{Sr. Builder}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_prg] enderchest.4 with minecraft:book[minecraft:custom_name='{"bold":false,"color":"red","italic":false,"text":"{Programmer}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_srprg] enderchest.5 with minecraft:book[minecraft:custom_name='{"bold":false,"color":"dark_red","italic":false,"text":"{Sr. Programmer}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_manager] enderchest.6 with minecraft:book[minecraft:custom_name='{"bold":false,"color":"yellow","italic":false,"text":"{Manager}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_lead] enderchest.7 with minecraft:book[minecraft:custom_name='{"bold":true,"color":"dark_purple","extra":[{"bold":false,"text":"Project Lead"},{"bold":true,"text":"}"}],"italic":false,"text":"{"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_cr] enderchest.8 with minecraft:book[minecraft:custom_name='{"bold":true,"color":"white","extra":[{"bold":true,"color":"aqua","text":"C"},{"bold":true,"color":"dark_aqua","text":"R"},{"bold":true,"color":"white","text":"}"}],"italic":false,"text":"{"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_art] enderchest.9 with minecraft:book[minecraft:custom_name='{"bold":false,"color":"green","italic":false,"text":"{Artist}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=has_pc] enderchest.26 with minecraft:book[minecraft:custom_name='{"color":"dark_gray","extra":[{"bold":true,"color":"green","text":"pc"},{"color":"dark_gray","text":")"}],"italic":false,"text":"("}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


item replace entity @s[scores={prefix=0}] enderchest.0 with minecraft:written_book[minecraft:custom_name='{"bold":false,"color":"dark_green","italic":false,"text":"(Tester)"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=1}] enderchest.1 with minecraft:written_book[minecraft:custom_name='{"bold":false,"color":"green","italic":false,"text":"[Helper]"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=2}] enderchest.2 with minecraft:written_book[minecraft:custom_name='{"bold":false,"color":"blue","italic":false,"text":"{Builder}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=3}] enderchest.3 with minecraft:written_book[minecraft:custom_name='{"bold":false,"color":"dark_blue","italic":false,"text":"{Sr. Builder}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=4}] enderchest.4 with minecraft:written_book[minecraft:custom_name='{"bold":false,"color":"red","italic":false,"text":"{Programmer}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=5}] enderchest.5 with minecraft:written_book[minecraft:custom_name='{"bold":false,"color":"dark_red","italic":false,"text":"{Sr. Programmer}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=6}] enderchest.6 with minecraft:written_book[minecraft:custom_name='{"bold":false,"color":"yellow","italic":false,"text":"{Manager}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=7}] enderchest.7 with minecraft:written_book[minecraft:custom_name='{"bold":true,"color":"dark_purple","extra":[{"bold":false,"text":"Project Lead"},{"bold":true,"text":"}"}],"italic":false,"text":"{"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=99}] enderchest.8 with minecraft:written_book[minecraft:custom_name='{"bold":true,"color":"white","extra":[{"bold":true,"color":"aqua","text":"C"},{"bold":true,"color":"dark_aqua","text":"R"},{"bold":true,"color":"white","text":"}"}],"italic":false,"text":"{"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=8}] enderchest.9 with minecraft:written_book[minecraft:custom_name='{"bold":false,"color":"green","italic":false,"text":"{Artist}"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]
item replace entity @s[scores={prefix=-2}] enderchest.26 with minecraft:written_book[minecraft:custom_name='{"color":"dark_gray","extra":[{"bold":true,"color":"green","text":"pc"},{"color":"dark_gray","text":")"}],"italic":false,"text":"("}',minecraft:hide_additional_tooltip={},minecraft:custom_data={invalid_click:1,clickable:1}]

item replace entity @s enderchest.18 with minecraft:barrier[minecraft:custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Back"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]



return 1