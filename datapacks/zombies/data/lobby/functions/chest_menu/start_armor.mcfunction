##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 12


##Unselected
item replace entity @s enderchest.1 with iron_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Iron","bold":true,"italic":false,"color":"gray"}]'}}
item replace entity @s enderchest.2 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:16711680,Name:'[{"text":"Red","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.3 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:16744192,Name:'[{"text":"Orange","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.4 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:16776960,Name:'[{"text":"Yellow","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.5 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:65280,Name:'[{"text":"Green","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.6 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:32767,Name:'[{"text":"Blue","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.7 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:8323327,Name:'[{"text":"Purple","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}

##Selected
item replace entity @s[scores={armor=0}] enderchest.1 with iron_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Iron","bold":true,"italic":false,"color":"gray"}]'},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=1}] enderchest.2 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:16711680,Name:'[{"text":"Red","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=2}] enderchest.3 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:16744192,Name:'[{"text":"Orange","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=3}] enderchest.4 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:16776960,Name:'[{"text":"Yellow","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=4}] enderchest.5 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:65280,Name:'[{"text":"Green","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=5}] enderchest.6 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:32767,Name:'[{"text":"Blue","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=6}] enderchest.7 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:8323327,Name:'[{"text":"Purple","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}

###Epics

##Locked
item replace entity @s enderchest.10 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Aqua","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.11 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Dark Green","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.12 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Brown","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.13 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Gray","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}

##Unlocked
item replace entity @s[tag=armor_7] enderchest.10 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:65535,Name:'[{"text":"Aqua","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=armor_8] enderchest.11 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:32512,Name:'[{"text":"Dark Green","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=armor_9] enderchest.12 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:6634270,Name:'[{"text":"Brown","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=armor_10] enderchest.13 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:8355711,Name:'[{"text":"Gray","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}

##Selected
item replace entity @s[scores={armor=7}] enderchest.10 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:65535,Name:'[{"text":"Aqua","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=8}] enderchest.11 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:32512,Name:'[{"text":"Dark Green","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=9}] enderchest.12 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:6634270,Name:'[{"text":"Brown","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=10}] enderchest.13 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:8355711,Name:'[{"text":"Gray","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}

###Legendaries

##Locked
item replace entity @s enderchest.14 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Pink","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.15 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Black","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.16 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Dark Red","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Locked","color":"red","italic":false}]']}}

##Unlocked
item replace entity @s[tag=armor_11] enderchest.14 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:16744447,Name:'[{"text":"Pink","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]']}}
item replace entity @s[tag=armor_12] enderchest.15 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:0,Name:'[{"text":"Black","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]']}}
item replace entity @s[tag=armor_13] enderchest.16 with leather_chestplate{clickable:1,cosmetic:1,HideFlags:255,display:{color:8323077,Name:'[{"text":"Dark Red","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]']}}

##Selected
item replace entity @s[scores={armor=11}] enderchest.14 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:16744447,Name:'[{"text":"Pink","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=12}] enderchest.15 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:0,Name:'[{"text":"Black","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={armor=13}] enderchest.16 with leather_chestplate{clickable:1,invalid_click:1,HideFlags:255,display:{color:8323077,Name:'[{"text":"Dark Red","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

