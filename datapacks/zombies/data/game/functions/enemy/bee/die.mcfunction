loot spawn ~ ~ ~ loot game:enemy_drops/knight
execute unless entity @e[type=bee,tag=miniboss,distance=1..] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Scary Swarm","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute unless entity @e[type=bee,tag=miniboss,distance=1..] run function game:enemy/booster_drops
