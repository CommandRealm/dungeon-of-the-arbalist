loot spawn ~ ~ ~ loot game:enemy_drops/piglins
execute unless entity @e[type=#game:piglins,distance=1..,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Piglin Horde","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute unless entity @e[type=#game:piglins,distance=1..,tag=miniboss] run function game:enemy/booster_drops
return 1