##called to change the text.


##Adding or removing.
execute if entity @s[tag=!reverse_state,tag=!temporary_tag] run function lobby:text/add_color
execute if entity @s[tag=reverse_state,tag=!temporary_tag] run function lobby:text/remove_color

tag @e[type=armor_stand,tag=lobby_text_marker,sort=nearest,limit=1] add temporary_tag


##Updating our text
setblock 0 10 0 air
execute if entity @s[tag=reverse_state] run setblock 0 10 0 oak_sign{front_text:{messages:['[{"text":"","bold":true},{"text":"☣","color":"dark_green","bold":false},{"text":" - ","color":"gray","bold":true},{"nbt":"ArmorItems[3].tag.current","entity":"@e[type=armor_stand,tag=temporary_tag,sort=nearest,limit=1]","interpret":true,"color":"white"},{"nbt":"ArmorItems[3].tag.current_colored","entity":"@e[type=armor_stand,tag=temporary_tag,sort=nearest,limit=1]","interpret":true,"color":"green","underlined":true},{"text":" - ","color":"gray","bold":true},{"text":"☣","color":"dark_green","bold":false}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
execute if entity @s[tag=!reverse_state] run setblock 0 10 0 oak_sign{front_text:{messages:['[{"text":"","bold":true},{"text":"☣","color":"dark_green","bold":false},{"text":" - ","color":"gray","bold":true},{"nbt":"ArmorItems[3].tag.current_colored","entity":"@e[type=armor_stand,tag=temporary_tag,sort=nearest,limit=1]","interpret":true,"color":"green","underlined":true},{"nbt":"ArmorItems[3].tag.current","entity":"@e[type=armor_stand,tag=temporary_tag,sort=nearest,limit=1]","interpret":true,"color":"white"},{"text":" - ","color":"gray","bold":true},{"text":"☣","color":"dark_green","bold":false}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
data modify entity @s CustomName set from block 0 10 0 front_text.messages[0]

tag @e[type=armor_stand,tag=lobby_text_marker,sort=nearest,limit=1] remove temporary_tag

##Resetting our timer
scoreboard players set @s nameplate_delay 2

##removing temporary tag
tag @s remove temporary_tag
tag @s remove temporary_tag_2