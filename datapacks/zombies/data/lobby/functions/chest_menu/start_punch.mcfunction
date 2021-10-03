##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 11


##Unselected
item replace entity @s enderchest.0 with structure_void{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"None","bold":true,"italic":false,"color":"gray"}]'}}
item replace entity @s enderchest.1 with tnt{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Explosion","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.2 with pink_glazed_terracotta{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Hearts","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.3 with dandelion{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Flowers","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.4 with arrow{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Arrows","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.5 with flint_and_steel{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Fire","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.6 with note_block{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Note","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.7 with nautilus_shell{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Nautilus","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.8 with fermented_spider_eye{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Magic","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.9 with campfire{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Smoke","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]']}}

##Selected
item replace entity @s[scores={cosmetics_punch=0}] enderchest.0 with structure_void{clickable:1,HideFlags:63,display:{Name:'[{"text":"None","bold":true,"italic":false,"color":"gray"}]',Lore:['[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=1}] enderchest.1 with tnt{clickable:1,HideFlags:63,display:{Name:'[{"text":"Explosion","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=2}] enderchest.2 with pink_glazed_terracotta{clickable:1,HideFlags:63,display:{Name:'[{"text":"Hearts","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=3}] enderchest.3 with dandelion{clickable:1,HideFlags:63,display:{Name:'[{"text":"Flowers","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=4}] enderchest.4 with arrow{clickable:1,HideFlags:63,display:{Name:'[{"text":"Arrows","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=5}] enderchest.5 with flint_and_steel{clickable:1,HideFlags:63,display:{Name:'[{"text":"Fire","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=6}] enderchest.6 with note_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"Note","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=7}] enderchest.7 with nautilus_shell{clickable:1,HideFlags:63,display:{Name:'[{"text":"Nautilus","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=8}] enderchest.8 with fermented_spider_eye{clickable:1,HideFlags:63,display:{Name:'[{"text":"Magic","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=9}] enderchest.9 with campfire{clickable:1,HideFlags:63,display:{Name:'[{"text":"Smoke","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"Common","italic":false,"color":"green"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}

###Epics

##Locked
item replace entity @s enderchest.10 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Diamonds","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.11 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Storm","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.12 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Respawn Anchor","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.13 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Attack","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.14 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Food","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Locked","color":"red","italic":false}]']}}

##Unlocked
item replace entity @s[tag=punch_10] enderchest.10 with diamond{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Diamonds","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=punch_11] enderchest.11 with gray_wool{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Storm","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=punch_12] enderchest.12 with respawn_anchor{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Respawn Anchor","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=punch_13] enderchest.13 with stone_sword{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Attack","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=punch_14] enderchest.14 with cooked_beef{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Food","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]']}}

##Selected
item replace entity @s[scores={cosmetics_punch=10}] enderchest.10 with diamond{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Diamonds","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=11}] enderchest.11 with gray_wool{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Storm","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=12}] enderchest.12 with respawn_anchor{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Respawn Anchor","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=13}] enderchest.13 with stone_sword{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Attack","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=14}] enderchest.14 with cooked_beef{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Food","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Epic","italic":false,"color":"light_purple"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}

###Legendaries

##Locked
item replace entity @s enderchest.15 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Skull","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.16 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"R.I.P","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.17 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Kill","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Locked","color":"red","italic":false}]']}}

##Unlocked
item replace entity @s[tag=punch_15] enderchest.15 with skeleton_skull{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Skull","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]']}}
item replace entity @s[tag=punch_16] enderchest.16 with chiseled_stone_bricks{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"R.I.P","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]']}}
item replace entity @s[tag=punch_17] enderchest.17 with chiseled_nether_bricks{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Kill","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]']}}

##Selected
item replace entity @s[scores={cosmetics_punch=15}] enderchest.15 with player_head{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Skull","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],SkullOwner:{Id:[I;-259627660,-1012907655,-1723462593,-1628330130],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJlMTMyYzJjMjk5NTdkMGE5MGY3NDY5MmQzZjA1YTYxYTJhYzUwZDQwODhmZGM2NWNkN2JlZjVmNjc5ZTQwOCJ9fX0="}]}}}
item replace entity @s[scores={cosmetics_punch=16}] enderchest.16 with chiseled_stone_bricks{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"R.I.P","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}
item replace entity @s[scores={cosmetics_punch=17}] enderchest.17 with chiseled_nether_bricks{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Kill","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"LEGENDARY","italic":false,"color":"yellow"}]','[{"text":"Selected","color":"blue","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

