loot spawn ~ ~ ~ loot game:enemy_drops/hoodies
particle soul ~ ~ ~ 0.5 0.5 0.5 0.1 35 force
playsound entity.vex.hurt master @a ~ ~ ~ 1 1.5
execute unless entity @e[type=zombie,tag=hoodie_miniboss,tag=miniboss,distance=1..] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Harrowed Hoodlums","color":"red","bold":true},{"text":" have been defeated.","color":"gray"}]
execute unless entity @e[type=zombie,tag=hoodie_miniboss,tag=miniboss,distance=1..] run function game:enemy/booster_drops