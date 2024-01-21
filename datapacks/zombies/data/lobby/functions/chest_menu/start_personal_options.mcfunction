##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 2


##Middle row

item replace entity @s[tag=solo_spawning] enderchest.11 with prismarine_crystals{clickable:1,HideFlags:255,display:{Name:'[{"text":"Group ","bold":true,"italic":false,"color":"green"},{"text":"Spawning","color":"gray"},{"text":": ","bold":false,"color":"gray"},{"text":"Off","bold":false,"color":"dark_red"}]',Lore:['[{"text":"Where you spawn in","italic":false,"color":"gray"}]','[{"text":"the random dungeon.","italic":false,"color":"gray"}]']}}
item replace entity @s[tag=!solo_spawning] enderchest.11 with prismarine_crystals{HideFlags:255,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,display:{Name:'[{"text":"Group ","bold":true,"italic":false,"color":"green"},{"text":"Spawning","color":"gray"},{"text":": ","bold":false,"color":"gray"},{"text":"On","bold":false,"color":"dark-green"}]',Lore:['[{"text":"Where you spawn in","italic":false,"color":"gray"}]','[{"text":"the random dungeon.","italic":false,"color":"gray"}]']}}

item replace entity @s enderchest.12 with crossbow{clickable:1,HideFlags:255,display:{Name:'[{"text":"Crossbow ","bold":true,"italic":false,"color":"#66501a"},{"text":"Purchase","color":"#3f3723"},{"text":": ","bold":false,"color":"gray"},{"text":"Drop","bold":false,"color":"#8228e7"}]',Lore:['[{"text":"Requirement for buying a","italic":false,"color":"gray"}]','[{"text":"crossbow.","italic":false,"color":"gray"}]']}}
item replace entity @s[tag=sneak_crossbow_purchase] enderchest.12 with crossbow{HideFlags:255,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,display:{Name:'[{"text":"Crossbow ","bold":true,"italic":false,"color":"#66501a"},{"text":"Purchase","color":"#3f3723"},{"text":": ","bold":false,"color":"gray"},{"text":"Drop ","bold":false,"color":"#8228e7"},{"text":"and ","color":"gray","bold":false},{"text":"Sneak","color":"#2baa9a","bold":false}]',Lore:['[{"text":"Requirement for buying a crossbow.","italic":false,"color":"gray"}]']}}



item replace entity @s enderchest.13 with magma_block{HideFlags:255,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,display:{Name:'[{"text":"Upgrade ","bold":true,"italic":false,"color":"blue"},{"text":"Sounds","color":"#008aff"},{"text":": ","bold":false,"color":"gray"},{"text":"On","color":"dark_green","italic":false}]',Lore:['[{"text":"The sound that plays","italic":false,"color":"gray"}]','[{"text":"near upgrade spots.","italic":false,"color":"gray"}]']}}
item replace entity @s[tag=no_upgrade_sounds] enderchest.13 with magma_block{clickable:1,HideFlags:255,display:{Name:'[{"text":"Upgrade ","bold":true,"italic":false,"color":"blue"},{"text":"Sounds","color":"#008aff"},{"text":": ","bold":false,"color":"gray"},{"text":"Off","color":"dark_red","italic":false}]',Lore:['[{"text":"The sound that plays","italic":false,"color":"gray"}]','[{"text":"near upgrade spots.","italic":false,"color":"gray"}]']}}


item replace entity @s enderchest.14 with compass{clickable:1,HideFlags:255,display:{Name:'[{"text":"Compass ","bold":true,"italic":false,"color":"#a5a6a8"},{"text":"Target","color":"red"},{"text":": ","bold":false,"color":"gray"},{"text":"Boss ","bold":false,"color":"#ab0909"},{"text":"Room","bold":false,"color":"#5a4f4f"}]',Lore:['[{"text":"What the compass","italic":false,"color":"gray"}]','[{"text":"points towards.","italic":false,"color":"gray"}]']}}
item replace entity @s[tag=north_compass] enderchest.14 with compass{HideFlags:255,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,display:{Name:'[{"text":"Compass ","bold":true,"italic":false,"color":"#a5a6a8"},{"text":"Target","color":"red"},{"text":": ","bold":false,"color":"gray"},{"text":"North","bold":false,"color":"green"}]',Lore:['[{"text":"What the compass","italic":false,"color":"gray"}]','[{"text":"points towards.","italic":false,"color":"gray"}]']}}

item replace entity @s enderchest.15 with melon_slice{clickable:1,HideFlags:255,display:{Name:'[{"text":"Color ","bold":true,"italic":false,"color":"white"},{"text":"Blind ","color":"gray"},{"text":"Mode","color":"white"},{"text":": ","bold":false,"color":"gray"},{"text":"Off","color":"dark_red","italic":false}]',Lore:['[{"text":"Adjusts the map item\'s interface","italic":false,"color":"gray"}]','[{"text":"to not be dependant on colors.","italic":false,"color":"gray"}]']}}
item replace entity @s[tag=color_blind_mode] enderchest.15 with glistering_melon_slice{clickable:1,HideFlags:255,display:{Name:'[{"text":"Color ","bold":true,"italic":false,"color":"white"},{"text":"Blind ","color":"gray"},{"text":"Mode","color":"white"},{"text":": ","bold":false,"color":"gray"},{"text":"On","color":"dark_green","italic":false}]',Lore:['[{"text":"Adjusts the map item\'s interface","italic":false,"color":"gray"}]','[{"text":"to not be dependant on colors.","italic":false,"color":"gray"}]']}}



item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

