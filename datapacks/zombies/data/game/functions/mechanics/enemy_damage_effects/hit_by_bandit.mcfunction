# called when we are hit by bandit


# removing adv
advancement revoke @s only game:enemy_damage/bandit

# removing treasure
scoreboard players set $mod random 75
function random:random
scoreboard players add $rand random 25

tag @s add play_lose_treasure_sound

scoreboard players operation @s remove_treasure = $rand random
function game:mechanics/lose_treasure