##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 2


##Middle row
item replace entity @s enderchest.11 with minecraft:magma_block[minecraft:custom_name='{"bold":true,"color":"blue","extra":[{"color":"#008aff","text":"Sounds"},{"bold":false,"color":"gray","text":": "},{"color":"dark_green","italic":false,"text":"On"}],"italic":false,"text":"Upgrade "}',minecraft:lore=['{"color":"gray","italic":false,"text":"The sound that plays"}','{"color":"gray","italic":false,"text":"near upgrade spots."}'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=no_upgrade_sounds] enderchest.11 with minecraft:magma_block[minecraft:custom_name='{"bold":true,"color":"blue","extra":[{"color":"#008aff","text":"Sounds"},{"bold":false,"color":"gray","text":": "},{"color":"dark_red","italic":false,"text":"Off"}],"italic":false,"text":"Upgrade "}',minecraft:lore=['{"color":"gray","italic":false,"text":"The sound that plays"}','{"color":"gray","italic":false,"text":"near upgrade spots."}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


item replace entity @s enderchest.13 with minecraft:compass[minecraft:custom_name='{"bold":true,"color":"#a5a6a8","extra":[{"color":"red","text":"Target"},{"bold":false,"color":"gray","text":": "},{"bold":false,"color":"#ab0909","text":"Boss "},{"bold":false,"color":"#5a4f4f","text":"Room"}],"italic":false,"text":"Compass "}',minecraft:lore=['{"color":"gray","italic":false,"text":"What the compass"}','{"color":"gray","italic":false,"text":"points towards."}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=north_compass] enderchest.13 with minecraft:compass[minecraft:custom_name='{"bold":true,"color":"#a5a6a8","extra":[{"color":"red","text":"Target"},{"bold":false,"color":"gray","text":": "},{"bold":false,"color":"green","text":"North"}],"italic":false,"text":"Compass "}',minecraft:lore=['{"color":"gray","italic":false,"text":"What the compass"}','{"color":"gray","italic":false,"text":"points towards."}'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.15 with minecraft:melon_slice[minecraft:custom_name='{"bold":true,"color":"white","extra":[{"color":"gray","text":"Blind "},{"color":"white","text":"Mode"},{"bold":false,"color":"gray","text":": "},{"color":"dark_red","italic":false,"text":"Off"}],"italic":false,"text":"Color "}',minecraft:lore=['{"color":"gray","italic":false,"text":"Adjusts the map item\'s interface"}','{"color":"gray","italic":false,"text":"to not be dependant on colors."}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
item replace entity @s[tag=color_blind_mode] enderchest.15 with minecraft:glistering_melon_slice[minecraft:custom_name='{"bold":true,"color":"white","extra":[{"color":"gray","text":"Blind "},{"color":"white","text":"Mode"},{"bold":false,"color":"gray","text":": "},{"color":"dark_green","italic":false,"text":"On"}],"italic":false,"text":"Color "}',minecraft:lore=['{"color":"gray","italic":false,"text":"Adjusts the map item\'s interface"}','{"color":"gray","italic":false,"text":"to not be dependant on colors."}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]

item replace entity @s enderchest.18 with minecraft:barrier[minecraft:custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Back"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


return 1