# called to check drop
scoreboard players set $mod random 20
function random:random

execute if score $rand random matches 0 run function game:modifiers/random_items/drop_item