##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 2


##Middle row
item replace entity @s enderchest.11 with magma_block{HideFlags:63,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,HideFlags:63,display:{Name:'[{"text":"Upgrade ","bold":true,"italic":false,"color":"blue"},{"text":"Sounds","color":"#008aff"},{"text":": ","bold":false,"color":"gray"},{"text":"On","color":"dark_green","italic":false}]',Lore:['[{"text":"The sound that plays","italic":false,"color":"gray"}]','[{"text":"near upgrade spots.","italic":false,"color":"gray"}]']}}
item replace entity @s[tag=no_upgrade_sounds] enderchest.11 with magma_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"Upgrade ","bold":true,"italic":false,"color":"blue"},{"text":"Sounds","color":"#008aff"},{"text":": ","bold":false,"color":"gray"},{"text":"Off","color":"dark_red","italic":false}]',Lore:['[{"text":"The sound that plays","italic":false,"color":"gray"}]','[{"text":"near upgrade spots.","italic":false,"color":"gray"}]']}}


item replace entity @s enderchest.13 with compass{clickable:1,HideFlags:63,display:{Name:'[{"text":"Compass ","bold":true,"italic":false,"color":"#a5a6a8"},{"text":"Target","color":"red"},{"text":": ","bold":false,"color":"gray"},{"text":"Boss ","bold":false,"color":"#ab0909"},{"text":"Room","bold":false,"color":"#5a4f4f"}]',Lore:['[{"text":"What the compass","italic":false,"color":"gray"}]','[{"text":"points towards.","italic":false,"color":"gray"}]']}}
item replace entity @s[tag=north_compass] enderchest.13 with compass{HideFlags:63,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,HideFlags:63,display:{Name:'[{"text":"Compass ","bold":true,"italic":false,"color":"#a5a6a8"},{"text":"Target","color":"red"},{"text":": ","bold":false,"color":"gray"},{"text":"North","bold":false,"color":"green"}]',Lore:['[{"text":"What the compass","italic":false,"color":"gray"}]','[{"text":"points towards.","italic":false,"color":"gray"}]']}}

item replace entity @s enderchest.15 with melon_slice{clickable:1,HideFlags:63,display:{Name:'[{"text":"Color ","bold":true,"italic":false,"color":"white"},{"text":"Blind ","color":"gray"},{"text":"Mode","color":"white"},{"text":": ","bold":false,"color":"gray"},{"text":"Off","color":"dark_red","italic":false}]',Lore:['[{"text":"Adjusts the map item\'s interface","italic":false,"color":"gray"}]','[{"text":"to not be dependant on colors.","italic":false,"color":"gray"}]']}}
item replace entity @s[tag=color_blind_mode] enderchest.15 with glistering_melon_slice{clickable:1,HideFlags:63,display:{Name:'[{"text":"Color ","bold":true,"italic":false,"color":"white"},{"text":"Blind ","color":"gray"},{"text":"Mode","color":"white"},{"text":": ","bold":false,"color":"gray"},{"text":"On","color":"dark_green","italic":false}]',Lore:['[{"text":"Adjusts the map item\'s interface","italic":false,"color":"gray"}]','[{"text":"to not be dependant on colors.","italic":false,"color":"gray"}]']}}

item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

