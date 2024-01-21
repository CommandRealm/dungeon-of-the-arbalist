# called to drop a random armor material unlock

# based on difficulty
execute if score $difficulty settings matches 0 run scoreboard players set $mod random 20
execute if score $difficulty settings matches 1 run scoreboard players set $mod random 30
execute if score $difficulty settings matches 2 run scoreboard players set $mod random 40
execute if score $difficulty settings matches 3 run scoreboard players set $mod random 48
execute if score $difficulty settings matches 4.. run scoreboard players set $mod random 52

function random:random

execute if score $rand random matches 0..9 run loot spawn ~ ~ ~ loot game:armor_trim_materials/iron
execute if score $rand random matches 10..19 run loot spawn ~ ~ ~ loot game:armor_trim_materials/gold
execute if score $rand random matches 20..29 run loot spawn ~ ~ ~ loot game:armor_trim_materials/quartz
execute if score $rand random matches 30..34 run loot spawn ~ ~ ~ loot game:armor_trim_materials/redstone
execute if score $rand random matches 35..39 run loot spawn ~ ~ ~ loot game:armor_trim_materials/lapis
execute if score $rand random matches 40..44 run loot spawn ~ ~ ~ loot game:armor_trim_materials/emerald
execute if score $rand random matches 45..47 run loot spawn ~ ~ ~ loot game:armor_trim_materials/amethyst
execute if score $rand random matches 48..50 run loot spawn ~ ~ ~ loot game:armor_trim_materials/diamond
execute if score $rand random matches 51 run loot spawn ~ ~ ~ loot game:armor_trim_materials/netherite
particle enchant ~ ~ ~ 0 0 0 0.5 50