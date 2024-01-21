# called to check for miniboss unlocks
scoreboard players set $mod random 4
function random:random
execute if score $rand random matches 0 run function game:enemy/miniboss_unlock_drops/drop
