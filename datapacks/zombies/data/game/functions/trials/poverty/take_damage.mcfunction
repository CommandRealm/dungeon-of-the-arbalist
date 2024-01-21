# called when we take damage



# cutting treasure in half 
# if we only have one treasure take it
scoreboard players set @s[scores={treasure=1}] treasure 0

scoreboard players operation $calculate calculate = @s treasure
scoreboard players operation $calculate calculate /= $2 number
tag @s add play_lose_treasure_sound

scoreboard players operation @s remove_treasure = $calculate calculate
function game:mechanics/lose_treasure

# dropping treasure if we have any left
execute if score @s treasure matches 100.. run loot spawn ~ ~ ~ loot game:trials/poverty/high_treasure
execute if score @s treasure matches 20..99 run loot spawn ~ ~ ~ loot game:trials/poverty/treasure
execute if score @s treasure matches 1..19 run loot spawn ~ ~2.5 ~ loot game:trials/poverty/low_treasure
execute positioned ~ ~2.5 ~ as @e[type=item,nbt={Age:0s,Item:{tag:{treasure:1}}}] at @s run function game:trials/poverty/initialize_drop_money