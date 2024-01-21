##called to convert treasure in our inventory to our treasure score.

##Resetting total score
scoreboard players set $total calculate 0

##Treasure bag
execute store result score @s calculate run data get entity @s Inventory[{id:"minecraft:leather_helmet",tag:{treasure:1}}].tag.treasure_amount
clear @s leather_helmet{treasure:1}
scoreboard players operation $total calculate += @s calculate

##Iron nuggets
execute store result score @s calculate run clear @s iron_nugget{treasure:1}
scoreboard players operation $total calculate += @s calculate

##Gold nuggets
execute store result score @s calculate run clear @s gold_nugget{treasure:1}
scoreboard players operation @s calculate *= $5 number
scoreboard players operation $total calculate += @s calculate

##Emeralds
execute store result score @s calculate run clear @s emerald{treasure:1}
scoreboard players operation @s calculate *= $20 number
scoreboard players operation $total calculate += @s calculate

##Diamonds
execute store result score @s calculate run clear @s diamond{treasure:1}
scoreboard players operation @s calculate *= $50 number
scoreboard players operation $total calculate += @s calculate

##Echo Shards
execute store result score @s calculate run clear @s echo_shard{treasure:1}
scoreboard players operation @s calculate *= $100 number
scoreboard players operation $total calculate += @s calculate

##Adding in the multiplier
scoreboard players operation $total calculate *= @s loot_multiplier

##Adding in the remainder
scoreboard players operation $total_calculate calculate += @s loot_remainder
scoreboard players set @s loot_remainder 0

##Getting remainder
scoreboard players operation $remainder calculate = $total calculate
scoreboard players operation $remainder calculate %= $100 number
scoreboard players operation @s loot_remainder = $remainder calculate

##Division
scoreboard players operation $total calculate /= $100 number




##Adding our treasure score
scoreboard players operation @s treasure += $total calculate

##Setting it up to display on the actionbar
scoreboard players operation @s new_treasure += $total calculate
scoreboard players operation @s[tag=!tutorial] global_treasure += $total calculate
scoreboard players operation @s local_treasure += $total calculate
scoreboard players set @s action_bar_delay 20


##Sounds
function game:mechanics/play_treasure_sound