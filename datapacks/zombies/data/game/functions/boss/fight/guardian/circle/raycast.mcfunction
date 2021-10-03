##called to raycast
scoreboard players remove $calculate calculate 1
scoreboard players operation $calculate_2 calculate = $calculate calculate
scoreboard players operation $calculate_2 calculate %= $10 number
execute if score $calculate_2 calculate matches 0 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[tag=in_boss_room]
execute if score $calculate_2 calculate matches 0 run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[tag=in_boss_room]

##Sound
execute if score $calculate_2 calculate matches 0 run playsound minecraft:block.stone.break master @a ~ ~ ~ 0.35 0

##Damaging players.
effect give @a[distance=..1] instant_damage 1 0 true
execute positioned ~ ~-1 ~ run effect give @a[distance=..1] instant_damage 1 0 true

execute if score $calculate calculate matches 1.. positioned ^ ^ ^0.25 run function game:boss/fight/guardian/circle/raycast