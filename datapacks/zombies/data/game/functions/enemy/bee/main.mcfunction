scoreboard players add $retarget bee_timer 1
execute as @e[type=bee,tag=bee_miniboss] at @s if score $retarget bee_timer matches 100.. run function game:enemy/bee/retarget