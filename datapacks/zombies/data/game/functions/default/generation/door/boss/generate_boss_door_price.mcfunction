##called to generate a door price
##Random number
execute store result score $rand random run loot insert 0 1 0 loot random:door_price
function random:reset_chest

##Multiplying random score by ten
scoreboard players operation $rand random *= $10 number

##Adding in our distance to the middle.
scoreboard players add $rand random 1000
scoreboard players operation @e[type=marker,tag=doorway,tag=boss_door] price_left = $rand random



