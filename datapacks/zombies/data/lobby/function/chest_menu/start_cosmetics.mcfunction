##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 1


##Middle row
item replace entity @s enderchest.10 with minecraft:name_tag[minecraft:custom_name='{"bold":true,"color":"light_purple","italic":false,"text":"Titles"}',minecraft:lore=['{"color":"gray","italic":false,"text":"Only unlocked on the Dungeon of the Arbalist map."}','{"color":"gray","extra":[{"bold":true,"color":"green","text":"Easy"},{"color":"gray","text":" or higher."}],"italic":false,"text":"Must be played on "}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.12 with minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"gold","italic":false,"text":"Armor"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.14 with minecraft:brick[minecraft:custom_name='{"bold":true,"color":"red","extra":[{"color":"dark_red","text":" Kill "},{"color":"green","text":"Effects"}],"italic":false,"text":"Punch"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.16 with minecraft:gold_nugget[minecraft:custom_name='{"bold":true,"color":"gold","italic":false,"text":"Unlocks"}',minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.18 with minecraft:barrier[minecraft:custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Back"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


return 1