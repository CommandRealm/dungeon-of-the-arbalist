# called when we are hit by bandit



# removing treasure
scoreboard players set $mod random 150
function random:random
scoreboard players add $rand random 75

# if it was a bandit
execute as @e[type=zombie,tag=bandit,sort=nearest,limit=1] at @s if entity @s[tag=enhanced] run scoreboard players add $rand random 200

tag @s add play_lose_treasure_sound

scoreboard players operation @s remove_treasure = $rand random
function game:mechanics/lose_treasure

# removing adv
advancement revoke @s only game:enemy_damage/bandit
