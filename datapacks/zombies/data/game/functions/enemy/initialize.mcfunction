##Initializing an enemy

##Factoring the wave into their health.
scoreboard players operation $calculate calculate = @s enemy_health
scoreboard players operation $calculate calculate /= $8 number
scoreboard players operation @s enemy_health -= $calculate calculate

execute unless score $wave game matches 15.. run scoreboard players operation $calculate calculate *= $wave game
execute if score $wave game matches 15.. run scoreboard players operation $calculate calculate *= $15 number
execute if score $wave game matches 15.. run scoreboard players operation $calculate calculate += $wave game

scoreboard players operation @s enemy_health += $calculate calculate



##if we're a boss or miniboss
execute unless entity @s[tag=!miniboss] unless entity @s[tag=!boss] run function game:enemy/scale_boss_health

##Adjusting health depending on the wave
execute if score $difficulty settings matches 0 run scoreboard players remove @s enemy_health 30
execute if score $difficulty settings matches 1 run scoreboard players remove @s enemy_health 20
execute if score $difficulty settings matches 2 run scoreboard players remove @s enemy_health 10


execute if score @s enemy_health matches ..0 run scoreboard players set @s enemy_health 1

##Copying max health score
scoreboard players operation @s enemy_max_health = @s enemy_health



##Update health
function game:enemy/update_name

##Resistance
effect give @s resistance 10000 127 true



##team
team join enemy

##removing needs_initialization tag
tag @s remove needs_initialization