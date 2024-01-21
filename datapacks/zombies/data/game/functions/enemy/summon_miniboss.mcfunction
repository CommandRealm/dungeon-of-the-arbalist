##called to summon the miniboss



##specific calls.
execute if entity @s[tag=husk_spawn] run function game:enemy/husk/summon

execute if entity @s[tag=polar_bear_spawn] run function game:enemy/polar_bear/summon

execute if entity @s[tag=blaze_spawn] run function game:enemy/blaze/summon

execute if entity @s[tag=skeleton_spawn] run function game:enemy/skeleton/summon

execute if entity @s[tag=enderman_spawn] run function game:enemy/enderman/summon

execute if entity @s[tag=mooshroom_spawn] run function game:enemy/mooshroom/summon

execute if entity @s[tag=illusioner_spawn] run function game:enemy/illusioner/summon

execute if entity @s[tag=bee_spawn] run function game:enemy/bee/start

execute if entity @s[tag=spider_spawn] run function game:enemy/spider/summon

execute if entity @s[tag=slime_spawn] run function game:enemy/slime/summon

execute if entity @s[tag=piglin_spawn] run function game:enemy/piglins/start

execute if entity @s[tag=hood_spawn] run function game:enemy/hoodies/start

##Adding miniboss score
scoreboard players add $summoned_miniboss game 1
execute if score $summoned_miniboss game matches 1 if score $miniboss_key game matches 0 run tag @e[tag=miniboss,sort=nearest,limit=1] add miniboss_key
execute if score $summoned_miniboss game matches 2 if score $miniboss_key game matches 1 run tag @e[tag=miniboss,sort=nearest,limit=1] add miniboss_key

##Adding time to the bossbar.
execute if score $wave_length game matches 1.. run scoreboard players add $wave_length game 600
execute if score $wave_length game matches 1.. if score $bossbar_length game <= $wave_length game store result bossbar game:wave max run scoreboard players get $wave_length game
execute if score $wave_length game matches 1.. if score $bossbar_length game <= $wave_length game store result bossbar game:wave value run scoreboard players get $wave_length game
execute if score $wave_length game matches 1.. if score $bossbar_length game <= $wave_length game run scoreboard players operation $bossbar_length game = $wave_length game