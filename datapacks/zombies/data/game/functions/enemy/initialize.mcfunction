##Initializing an enemy

##Factoring the wave into their health.
scoreboard players operation $calculate calculate = @s enemy_health
scoreboard players operation $calculate calculate /= $8 number
scoreboard players operation @s enemy_health -= $calculate calculate

execute unless score $wave game matches 15.. run scoreboard players operation $calculate calculate *= $wave game
execute unless score $wave game matches 15.. run scoreboard players operation $calculate calculate += $wave game
execute if score $wave game matches 15.. run scoreboard players operation $calculate calculate *= $15 number
execute if score $wave game matches 15.. run scoreboard players operation $calculate calculate += $wave game
execute if score $wave game matches 50.. run scoreboard players operation $temp calculate = $wave game
execute if score $wave game matches 50.. run scoreboard players operation $temp calculate /= $4 number
execute if score $wave game matches 50.. run scoreboard players operation $calculate calculate += $temp game

scoreboard players operation @s enemy_health += $calculate calculate

execute if score $started boss matches 1 if entity @e[type=marker,tag=temporary_tag,sort=nearest,limit=1,tag=boss_room_spawnpoint] run tag @s add boss_room_enemy

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
effect give @s resistance infinite 127 true

# saving keeper base health
execute if entity @s[type=zombie,tag=keeper] run scoreboard players operation @s attack2 = @s enemy_health

##team
team join enemy

##removing needs_initialization tag
tag @s remove needs_initialization

# if the wave is over apply glowing
execute if score $mode settings matches 0 if score $wave_length game matches ..-600 unless entity @s[type=zombie,tag=phantom_part] run effect give @s[tag=!boss_room_enemy,tag=!boss,tag=!tutorial_enemy,tag=!miniboss] glowing infinite 0 true
