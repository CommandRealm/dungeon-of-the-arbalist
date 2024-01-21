##Called to push us back from the air effect.

##Storing our current motion.
execute store result score @s calculate run data get entity @s Motion[0] 100
##Multiplying
scoreboard players operation @s calculate *= $10 number
##Applying motion
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s calculate

##Storing our current motion.
execute store result score @s calculate run data get entity @s Motion[1] 100
##Multiplying
scoreboard players operation @s calculate *= $10 number
##Applying motion
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s calculate

##Storing our current motion.
execute store result score @s calculate run data get entity @s Motion[2] 100
##Multiplying
scoreboard players operation @s calculate *= $10 number
##Applying motion
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s calculate

##Resetting calculate
scoreboard players reset @s calculate