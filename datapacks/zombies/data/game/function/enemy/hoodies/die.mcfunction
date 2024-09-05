loot spawn ~ ~ ~ loot game:enemy_drops/hoodies
particle minecraft:soul ~ ~ ~ 0.5 0.5 0.5 0.1 35 force
playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 1 1.5
execute unless entity @e[type=minecraft:zombie,distance=1..,tag=hoodie_miniboss,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Harrowed Hoodlums","color":"red","bold":true,"type":"text"},{"text":" have been defeated.","color":"gray","type":"text"}]
execute unless entity @e[type=minecraft:zombie,distance=1..,tag=hoodie_miniboss,tag=miniboss] run function game:enemy/booster_drops
return 1