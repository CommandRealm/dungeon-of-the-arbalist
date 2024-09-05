##called to add color

data modify entity @e[type=minecraft:armor_stand,tag=lobby_text_marker,sort=nearest,limit=1] ArmorItems[3].components."minecraft:custom_data".current_colored append from entity @e[type=minecraft:armor_stand,tag=lobby_text_marker,sort=nearest,limit=1] ArmorItems[3].components."minecraft:custom_data".current[0]

data remove entity @e[type=minecraft:armor_stand,tag=lobby_text_marker,sort=nearest,limit=1] ArmorItems[3].components."minecraft:custom_data".current[0]
##Seeing if we need to change states.
execute unless data entity @e[type=minecraft:armor_stand,tag=lobby_text_marker,sort=nearest,limit=1] ArmorItems[3].components."minecraft:custom_data".current[0] run function lobby:text/change_state

return 1