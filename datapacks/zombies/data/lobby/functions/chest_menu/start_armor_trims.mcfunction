


##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 19


##Middle row
##Locked
item replace entity @s enderchest.9 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"20","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.10 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"30","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.11 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"40","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.12 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"50","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.13 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"60","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.14 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"70","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.15 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"80","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.16 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"90","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.17 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"100","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}

item replace entity @s enderchest.1 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:[ '[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Skelrath","color":"red","obfuscated": true},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.2 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Viscean","color":"red","obfuscated": true},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.3 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Nixeous","color":"red","obfuscated": true},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.4 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Molten Titan","color":"red","obfuscated": true},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.5 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Forest Essence","color":"red","obfuscated": true},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s enderchest.6 with iron_bars{clickable:1,invalid_click:1,HideFlags:255,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"MORGAN lol","color":"red","obfuscated": true},{"text":" to unlock.","color":"gray"}]']}}

##Unlocked
item replace entity @s[tag=trim_1] enderchest.9 with host_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Host","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"20","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_2] enderchest.10 with tide_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Tide","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"30","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_3] enderchest.11 with snout_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Snout","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"40","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_4] enderchest.12 with sentry_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Sentry","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"50","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_5] enderchest.13 with eye_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Eye","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"60","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_6] enderchest.14 with vex_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Vex","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"70","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_7] enderchest.15 with ward_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Ward","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"80","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_8] enderchest.16 with dune_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Dune","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"90","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_9] enderchest.17 with silence_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Silence","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"100","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}

item replace entity @s[tag=trim_10] enderchest.1 with rib_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Rib","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Skelrath","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_11] enderchest.2 with coast_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Coast","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Viscean","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_12] enderchest.3 with raiser_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Raiser","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Nixeous","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_13] enderchest.4 with spire_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Spire","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Molten Titan","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_14] enderchest.5 with wild_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Wild","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Forest Essence","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[tag=trim_15] enderchest.6 with wayfinder_armor_trim_smithing_template{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"Wayfinder","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"MORGAN lol","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}


item replace entity @s enderchest.0 with structure_void{clickable:1,cosmetic:1,HideFlags:255,display:{Name:'[{"text":"None","bold":true,"italic":false,"color":"gray"}]'}}
item replace entity @s[scores={cosmetics_trim=0}] enderchest.0 with structure_void{clickable:1,HideFlags:255,display:{Name:'[{"text":"None","bold":true,"italic":false,"color":"gray"}]',Lore:['[{"text":"Selected","italic":false,"color":"blue"}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}

##Selected
item replace entity @s[scores={cosmetics_trim=1}] enderchest.9 with host_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Host","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"20","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=2}] enderchest.10 with tide_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Tide","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"30","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=3}] enderchest.11 with snout_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Snout","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"40","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=4}] enderchest.12 with sentry_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Sentry","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"50","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=5}] enderchest.13 with eye_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Eye","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"60","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=6}] enderchest.14 with vex_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Vex","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"70","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=7}] enderchest.15 with ward_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Ward","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"80","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=8}] enderchest.16 with dune_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Dune","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"90","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=9}] enderchest.17 with silence_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Silence","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Reach ","italic":false,"color":"gray"},{"text":"Wave ","color":"dark_green"},{"text":"100","bold":true,"color":"green"},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=10}] enderchest.1 with rib_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Rib","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Skelrath","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=11}] enderchest.2 with coast_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Coast","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Viscean","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=12}] enderchest.3 with raiser_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Raiser","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Nixeous","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=13}] enderchest.4 with spire_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Spire","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Molten Titan","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=14}] enderchest.5 with wild_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Wild","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"Forest Essence","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim=15}] enderchest.6 with wayfinder_armor_trim_smithing_template{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:255,clickable:1,cosmetic:1,display:{Name:'[{"text":"Wayfinder","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Defeat ","italic":false,"color":"gray"},{"text":"MORGAN lol","color":"red","obfuscated": false},{"text":" to unlock.","color":"gray"}]']}}


# material

item replace entity @s[scores={cosmetics_trim_type=0}] enderchest.22 with copper_ingot{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Copper","color":"#9d703f"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=1}] enderchest.22 with iron_ingot{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Iron","color":"gray"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=2}] enderchest.22 with gold_ingot{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Gold","color":"gold"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=3}] enderchest.22 with quartz{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Quartz","color":"white"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=4}] enderchest.22 with redstone{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Redstone","color":"#d91922"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=5}] enderchest.22 with lapis_lazuli{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Lapis","color":"blue"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=6}] enderchest.22 with emerald{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Emerald","color":"green"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=7}] enderchest.22 with amethyst_shard{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Amethyst","color":"#c17ad3"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=8}] enderchest.22 with diamond{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Diamond","color":"aqua"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}
item replace entity @s[scores={cosmetics_trim_type=9}] enderchest.22 with netherite_ingot{cosmetic:2,HideFlags:255,clickable:1,display:{Name:'[{"text":"Armor","bold":false,"italic":false,"color":"aqua"},{"text":" Trim ","color":"blue"},{"text":"Material","color":"light_purple","bold":false},{"text":": ","color":"gray"},{"text":"Netherite","color":"dark_gray"}]',Lore:['[{"text":"Click to cycle to next unlocked trim.","italic":false,"color":"gray"}]']}}





item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}
