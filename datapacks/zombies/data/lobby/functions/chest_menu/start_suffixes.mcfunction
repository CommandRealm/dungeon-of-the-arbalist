##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 8

##Locked
item replace entity @s enderchest.0 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Default","color":"#6a430f","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.1 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Fire","color":"#f1390e","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.2 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Water","color":"#0e8ef1","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.3 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Earth","color":"#b27565","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.4 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Air","color":"#d6d6d6","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.5 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Ice","color":"#6fe6ff","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.6 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Electric","color":"#f0d44f","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.7 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Nature","color":"#17b00c","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.8 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Darkness","color":"#3e2e51","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.9 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Metal","color":"#544c4c","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}

item replace entity @s enderchest.10 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Magma","color":"#f1390e","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.11 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Rain","color":"#0e8ef1","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.12 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Boulder","color":"#b27565","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.13 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Tornado","color":"#d6d6d6","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.14 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Frost","color":"#6fe6ff","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.15 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Lightning","color":"#f0d44f","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.16 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Wild","color":"#17b00c","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.17 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Shadow","color":"#3e2e51","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}

item replace entity @s enderchest.19 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Iron","color":"#544c4c","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.20 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Steam","color":"#b0b0b0","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.21 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Waterfall","color":"#26dbcc","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.22 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Basalt","color":"#3d3e4c","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.23 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Conduction","color":"#92906b","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.24 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Snow","color":"#bdfbff","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.25 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Combustion","color":"#ae6a6d","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}

##Unlocked
item replace entity @s[tag=title_0] enderchest.0 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Arbalist (Default)","color":"#6a430f","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_1] enderchest.1 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Flaming (Fire)","color":"#f1390e","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_2] enderchest.2 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Soaked (Water)","color":"#0e8ef1","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_3] enderchest.3 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Sturdy (Earth)","color":"#b27565","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_4] enderchest.4 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Breeze (Air)","color":"#d6d6d6","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_5] enderchest.5 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Cold (Ice)","color":"#6fe6ff","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_6] enderchest.6 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Spark (Electric)","color":"#f0d44f","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_7] enderchest.7 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Seedling (Nature)","color":"#17b00c","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_8] enderchest.8 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Gloomy (Darkness)","color":"#3e2e51","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_9] enderchest.9 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Durable (Metal)","color":"#544c4c","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}

item replace entity @s[tag=title_10] enderchest.10 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Molten (Magma)","color":"#f1390e","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_11] enderchest.11 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Drenched (Rain)","color":"#0e8ef1","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_12] enderchest.12 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Immovable (Boulder)","color":"#b27565","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_13] enderchest.13 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Cyclone (Tornado)","color":"#d6d6d6","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_14] enderchest.14 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Frozen (Frost)","color":"#6fe6ff","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_15] enderchest.15 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Charged (Lightning)","color":"#f0d44f","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_16] enderchest.16 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Verdant (Wild)","color":"#17b00c","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_17] enderchest.17 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Dreary (Shadow)","color":"#3e2e51","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}

item replace entity @s[tag=title_18] enderchest.19 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Resistant (Iron)","color":"#544c4c","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_19] enderchest.20 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Boiled (Steam)","color":"#b0b0b0","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_20] enderchest.21 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Rushing (Waterfall)","color":"#26dbcc","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_21] enderchest.22 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Aphanitic (Basalt)","color":"#3d3e4c","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_22] enderchest.23 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Inventor (Conduction)","color":"#92906b","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_23] enderchest.24 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Chilled (Snow)","color":"#bdfbff","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_24] enderchest.25 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Heated (Combustion)","color":"#ae6a6d","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}


##Selected
item replace entity @s[team=title_0] enderchest.0 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Arbalist (Default)","color":"#6a430f","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_1] enderchest.1 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Flaming (Fire)","color":"#f1390e","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_2] enderchest.2 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Soaked (Water)","color":"#0e8ef1","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_3] enderchest.3 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Sturdy (Earth)","color":"#b27565","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_4] enderchest.4 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Breeze (Air)","color":"#d6d6d6","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_5] enderchest.5 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Cold (Ice)","color":"#6fe6ff","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_6] enderchest.6 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Spark (Eletric)","color":"#f0d44f","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_7] enderchest.7 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Seedling (Nature)","color":"#17b00c","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_8] enderchest.8 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Gloomy (Darkness)","color":"#3e2e51","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_9] enderchest.9 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Durable (Metal)","color":"#544c4c","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}

item replace entity @s[team=title_10] enderchest.10 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Molten (Magma)","color":"#f1390e","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_11] enderchest.11 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Drenched (Rain)","color":"#0e8ef1","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_12] enderchest.12 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Immovable (Boulder)","color":"#b27565","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_13] enderchest.13 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Cyclone (Tornado)","color":"#d6d6d6","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_14] enderchest.14 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Frozen (Frost)","color":"#6fe6ff","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_15] enderchest.15 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Charged (Lightning)","color":"#f0d44f","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_16] enderchest.16 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Verdant (Wild)","color":"#17b00c","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_17] enderchest.17 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Dreary (Shadow)","color":"#3e2e51","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}

item replace entity @s[team=title_18] enderchest.19 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Resistant (Iron)","color":"#544c4c","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_19] enderchest.20 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Boiled (Steam)","color":"#b0b0b0","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_20] enderchest.21 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Rushing (Waterfall)","color":"#26dbcc","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_21] enderchest.22 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Aphanitic (Basalt)","color":"#3d3e4c","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_22] enderchest.23 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Inventor (Conduction)","color":"#92906b","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_23] enderchest.24 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Chilled (Snow)","color":"#bdfbff","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_24] enderchest.25 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Heated (Combustion)","color":"#ae6a6d","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}


##Steam
#Hex #b0b0b0
#Dec 11579568

##Waterfall
#Hex #26dbcc
#Dec 2546636

##Basalt
#Hex #3d3e4c
#Dec 4013644

##Conduction
#Hex #92906b
#Dec 9605227

##Snow
#Hex #bdfbff
#Dec 12450815

##Combustion
#Hex #ae6a6d
#Dec 11430509

##Uranium 
#Hex #38e310
#Dec 3728144

##Cumulonimbus
#Hex #586060
#Dec 5791840

##Erratics
#Hex #4c9490
#Dec 5018768

item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}
item replace entity @s enderchest.26 with lime_dye{clickable:1,HideFlags:255,display:{Name:'[{"text":"Next","bold":true,"italic":false,"color":"#00ff00"}]'}}
