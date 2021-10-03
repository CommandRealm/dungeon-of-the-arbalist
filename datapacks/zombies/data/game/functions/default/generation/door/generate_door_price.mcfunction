##called to generate a door price
##Random number
execute store result score $rand random run loot insert 0 1 0 loot random:door_price
function random:reset_chest

##Multiplying random score by ten
scoreboard players operation $rand random *= $10 number

##Adding in our distance to the middle.
execute if entity @s[x=2000,y=66,z=0,distance=..75] run scoreboard players add $rand random 300
execute if entity @s[x=2000,y=66,z=0,distance=76..100] run scoreboard players add $rand random 50
execute if entity @s[x=2000,y=66,z=0,distance=100..] run scoreboard players add $rand random 50
scoreboard players operation @s price_left = $rand random



