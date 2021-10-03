##called to update the bossbar ui after the timer is over

execute store result score $enemies_left game if entity @e[tag=enemy,tag=!tutorial_enemy]
scoreboard players operation $calculate_2 calculate = $enemies_left game
scoreboard players operation $calculate_2 calculate -= $enemies_required game

##If no boss, but there are other enemies.
execute unless score $started boss matches 1 if score $calculate calculate <= $enemies_left game run bossbar set game:wave name [{"text":"=","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false},{"text":" Kill ","color":"red","bold":true},{"score":{"objective":"calculate","name":"$calculate_2"},"color":"green","bold":true},{"text":" enemies to end the wave.","color":"dark_green"},{"text":" =","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false}]
##If there are other enemies, and a boss
execute if score $calculate calculate <= $enemies_left game if score $started boss matches 1 run bossbar set game:wave name [{"text":"=","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false},{"text":" Kill a ","color":"red","bold":true},{"text":"boss","color":"green","bold":true},{"text":" to end the wave. ","color":"dark_green"},{"text": "=","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false}]
##If the base enemies are fine, but there is a boss
execute unless score $calculate calculate <= $enemies_left game if score $started boss matches 1 run bossbar set game:wave name [{"text":"=","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false},{"text":" Kill ","color":"red","bold":true},{"score":{"objective":"calculate","name":"$calculate_2"},"color":"dark_green"},{"text":" enemies and a ","color":"dark_green"},{"text":"boss","color":"green","bold":true},{"text":" to end the wave. ","color":"dark_green"},{"text":" =","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false}]
