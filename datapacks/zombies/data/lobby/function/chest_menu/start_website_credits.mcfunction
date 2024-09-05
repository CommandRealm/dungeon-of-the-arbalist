##Starting the credits screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 15



##Middle row
item replace entity @s enderchest.0 with minecraft:player_head[minecraft:custom_name='{"bold":true,"color":"yellow","italic":false,"text":"minecraft-heads.com"}',minecraft:lore=['{"color":"gray","italic":false,"text":" - Custom player heads."}'],minecraft:profile={id:[I;866667617,641484425,-1507050624,1155661645],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVjNmRjMmJiZjUxYzM2Y2ZjNzcxNDU4NWE2YTU2ODNlZjJiMTRkNDdkOGZmNzE0NjU0YTg5M2Y1ZGE2MjIifX19"}]},minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1,invalid_click:1}]

item replace entity @s enderchest.1 with minecraft:armor_stand[minecraft:custom_name='{"bold":true,"color":"yellow","italic":false,"text":"vanillatweaks.net"}',minecraft:lore=['{"color":"gray","italic":false,"text":" - Armor stand posing."}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1,invalid_click:1}]

item replace entity @s enderchest.2 with minecraft:player_head[minecraft:custom_name='{"bold":true,"color":"yellow","italic":false,"text":"misode.github.io"}',minecraft:lore=['{"color":"gray","italic":false,"text":" - JSON generators."}'],minecraft:profile={id:[I;-1041338092,-1077851336,-1822542589,-570877326],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUyZDZlMmZkZWVhMjkzMTQ5ZDY3NzQ4YmQwNTcxMjY3Yjg2M2YyYTU2NWE3ZDZhMTc4MGYxMjY1ZmIzNjBkMyJ9fX0="}]},minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1,invalid_click:1}]

item replace entity @s enderchest.3 with minecraft:armor_stand[minecraft:custom_name='{"bold":true,"color":"yellow","italic":false,"text":"haselkern.com"}',minecraft:lore=['{"color":"gray","italic":false,"text":" - Armor stand posing."}'],minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1,invalid_click:1}]


##Back button
item replace entity @s enderchest.18 with minecraft:barrier[minecraft:custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Back"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]
return 1