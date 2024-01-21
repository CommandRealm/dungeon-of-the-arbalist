##Called to give us armor.

##clear
clear @s iron_boots{armor_piece:1b}
clear @s iron_chestplate{armor_piece:1b}
clear @s iron_leggings{armor_piece:1b}

clear @s golden_boots{armor_piece:1b}
clear @s golden_chestplate{armor_piece:1b}
clear @s golden_leggings{armor_piece:1b}

clear @s diamond_boots{armor_piece:1b}
clear @s diamond_chestplate{armor_piece:1b}
clear @s diamond_leggings{armor_piece:1b}

clear @s netherite_boots{armor_piece:1b}
clear @s netherite_chestplate{armor_piece:1b}
clear @s netherite_leggings{armor_piece:1b}

clear @s chainmail_boots{armor_piece:1b}
clear @s chainmail_chestplate{armor_piece:1b}
clear @s chainmail_leggings{armor_piece:1b}

clear @s netherite_boots{armor_piece:1b}
clear @s netherite_chestplate{armor_piece:1b}
clear @s netherite_leggings{armor_piece:1b}

clear @s leather_leggings{armor_piece:1b}
clear @s leather_boots{armor_piece:1b}
clear @s leather_chestplate{armor_piece:1b}
clear @s elytra{armor_piece:1b}

##killing nearby Items
kill @e[type=item,nbt={Item:{tag:{armor_piece:1b}}},distance=..5]

##Leggings

# execute unless score @s color matches 16777215 run function game:mechanics/get_colored_leggings

# execute if score @s color matches 16777215 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Leggings","italic":false,"color":"yellow"}]'},HideFlags:255}
# item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Leggings","italic":false,"color":"yellow"}]'},HideFlags:255}

##Iron
execute if score @s armor matches 0 run item replace block 0 1 0 container.0 with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 0 run item replace block 0 1 0 container.1 with iron_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 0 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Red
execute if score @s armor matches 1 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:16711680,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 1 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:16711680,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 1 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:16711680,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Orange
execute if score @s armor matches 2 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:16744192,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 2 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:16744192,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 2 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:16744192,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Yellow
execute if score @s armor matches 3 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:16776960,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 3 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:16776960,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 3 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:16776960,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Green
execute if score @s armor matches 4 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:65280,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 4 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:65280,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 4 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:65280,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Blue
execute if score @s armor matches 5 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:32767,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 5 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:32767,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 5 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:32767,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Purple
execute if score @s armor matches 6 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:8323327,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 6 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:8323327,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 6 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:8323327,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Aqua
execute if score @s armor matches 7 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:65535,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 7 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:65535,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 7 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:65535,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Dark Green
execute if score @s armor matches 8 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:32512,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 8 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:32512,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 8 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:32512,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Brown
execute if score @s armor matches 9 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:6634270,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 9 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:6634270,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 9 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:6634270,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Gray
execute if score @s armor matches 10 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:8355711,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 10 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:8355711,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 10 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:8355711,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Pink
execute if score @s armor matches 11 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:16744447,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 11 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:16744447,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 11 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:16744447,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Black
execute if score @s armor matches 12 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:0,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 12 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:0,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 12 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:0,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}

##Dark Red
execute if score @s armor matches 13 run item replace block 0 1 0 container.0 with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:8323077,Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 13 run item replace block 0 1 0 container.1 with leather_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{color:8323077,Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 13 run item replace block 0 1 0 container.2 with leather_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{color:8323077,Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}



##Gold
execute if score @s armor matches 14 run item replace block 0 1 0 container.0 with golden_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Boots","italic":false,"color":"gold"}]'},HideFlags:255}
execute if score @s armor matches 14 run item replace block 0 1 0 container.1 with golden_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Chestplate","italic":false,"color":"gold"}]'},HideFlags:255}
execute if score @s armor matches 14 run item replace block 0 1 0 container.2 with golden_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{Name:'[{"text":"Leggings","italic":false,"color":"gold"}]'},HideFlags:255}

##Elytra
execute if score @s armor matches 15 run item replace block 0 1 0 container.0 with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Boots","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 15 run item replace block 0 1 0 container.1 with elytra{Damage:432,Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Chestplate","italic":false,"color":"gray"}]'},HideFlags:255}
execute if score @s armor matches 15 run item replace block 0 1 0 container.2 with iron_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{Name:'[{"text":"Leggings","italic":false,"color":"gray"}]'},HideFlags:255}


##Chainmail
execute if score @s armor matches 16 run item replace block 0 1 0 container.0 with chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Boots","italic":false,"color":"dark_aqua"}]'},HideFlags:255}
execute if score @s armor matches 16 run item replace block 0 1 0 container.1 with chainmail_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Chestplate","italic":false,"color":"dark_aqua"}]'},HideFlags:255}
execute if score @s armor matches 16 run item replace block 0 1 0 container.2 with chainmail_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{Name:'[{"text":"Leggings","italic":false,"color":"dark_aqua"}]'},HideFlags:255}

##Netherite
execute if score @s armor matches 17 run item replace block 0 1 0 container.0 with netherite_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Boots","italic":false,"color":"dark_gray"}]'},HideFlags:255}
execute if score @s armor matches 17 run item replace block 0 1 0 container.1 with netherite_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Chestplate","italic":false,"color":"dark_gray"}]'},HideFlags:255}
execute if score @s armor matches 17 run item replace block 0 1 0 container.2 with netherite_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{Name:'[{"text":"Leggings","italic":false,"color":"dark_gray"}]'},HideFlags:255}

##Diamond
execute if score @s armor matches 18 run item replace block 0 1 0 container.0 with diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4},{id:"minecraft:projectile_protection",lvl:4}],armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Boots","italic":false,"color":"dark_aqua"}]'},HideFlags:255}
execute if score @s armor matches 18 run item replace block 0 1 0 container.1 with diamond_chestplate{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],display:{Name:'[{"text":"Chestplate","italic":false,"color":"dark_aqua"}]'},HideFlags:255}
execute if score @s armor matches 18 run item replace block 0 1 0 container.2 with diamond_leggings{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 302, 302, 302, 302]}],display:{Name:'[{"text":"Leggings","italic":false,"color":"dark_aqua"}]'},HideFlags:255}




# Applying our trim to whatever armor we have.
execute if score @s cosmetics_trim matches 1.. run function game:mechanics/get_armor_trim

# getting our armor back
item replace entity @s armor.feet from block 0 1 0 container.0
item replace entity @s armor.chest from block 0 1 0 container.1
item replace entity @s armor.legs from block 0 1 0 container.2