##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 10

##Locked
item replace entity @s enderchest.0 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Spontaneous","color":"#7af08b","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.1 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Electrostatic","color":"#7cd8ff","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.2 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Grounded","color":"#7e6339","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.3 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Niveous","color":"#618782","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.4 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Igneous","color":"#b74d13","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.5 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Deluge","color":"#0024ff","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.6 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Blizzard","color":"#bdd4df","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.7 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Plasma","color":"#ce00e6","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.8 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Landslide","color":"#784900","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.9 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Fog","color":"#c1ffed","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}

item replace entity @s enderchest.10 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Netherite","color":"#4c4143","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.11 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Antimatter","color":"#46067d","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.12 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Radioactive","color":"#4cab1d","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.13 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","color":"red","italic":false}]',Lore:['[{"text":"Beat the game with the ","color":"gray","italic":false},{"text":"Inferno","color":"#b33300","bold":true},{"text":" Crossbow ","color":"#6a430f"},{"text":"to unlock.","color":"gray"}]']}}



##Unlocked
item replace entity @s[tag=title_50] enderchest.0 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Impulsive (Spontaneous)","color":"#7af08b","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_51] enderchest.1 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Excessive (Electrostatic)","color":"#7cd8ff","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_52] enderchest.2 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Swift (Grounded)","color":"#7e6339","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_53] enderchest.3 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Wintry (Niveous)","color":"#618782","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_54] enderchest.4 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Magmatic (Igneous)","color":"#b74d13","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_55] enderchest.5 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Flooded (Deluge)","color":"#0024ff","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_56] enderchest.6 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Bleak (Blizzard)","color":"#bdd4df","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_57] enderchest.7 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Luminous (Plasma)","color":"#ce00e6","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_58] enderchest.8 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Descending (Landslide)","color":"#784900","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_59] enderchest.9 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Hazy (Fog)","color":"#c1ffed","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}

item replace entity @s[tag=title_60] enderchest.10 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Indestructable (Netherite)","color":"#4c4143","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_61] enderchest.11 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Negative (Antimatter)","color":"#46067d","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_62] enderchest.12 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Withered (Radioactive)","color":"#4cab1d","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}
item replace entity @s[tag=title_63] enderchest.13 with name_tag{clickable:1,HideFlags:255,display:{Name:'[{"text":"Sweltered (Inferno)","color":"#b33300","italic":false,"bold":true}]',Lore:['[{"text":"Click to select.","color":"gray","italic":false}]']}}


##Selected
item replace entity @s[team=title_50] enderchest.0 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Impulsive (Spontaneous)","color":"#7af08b","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_51] enderchest.1 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Excessive (Electrostatic)","color":"#7cd8ff","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_52] enderchest.2 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Swift (Grounded)","color":"#7e6339","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_53] enderchest.3 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Wintry (Niveous)","color":"#618782","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_54] enderchest.4 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Magmatic (Igneous)","color":"#b74d13","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_55] enderchest.5 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Flooded (Deluge)","color":"#0024ff","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_56] enderchest.6 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Bleak (Blizzard)","color":"#bdd4df","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_57] enderchest.7 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Luminous (Plasma)","color":"#ce00e6","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_58] enderchest.8 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Descending (Landslide)","color":"#784900","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_59] enderchest.9 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Hazy (Fog)","color":"#c1ffed","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}

item replace entity @s[team=title_60] enderchest.10 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Indestructable (Netherite)","color":"#4c4143","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_61] enderchest.11 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Negative (Antimatter)","color":"#46067d","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_62] enderchest.12 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Withered (Radioactive)","color":"#4cab1d","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}
item replace entity @s[team=title_63] enderchest.13 with name_tag{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Sweltered (Inferno)","color":"#b33300","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"aqua_affinity",lvl:1}]}




##Filling blank pages

item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

