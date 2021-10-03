##Called when the attack is active.


##Name
execute if score $attack boss matches 81 as @e[type=guardian,tag=exploding_guardian] run data modify entity @s CustomName set value '[{"text":"4...","color":"green"}]'
execute if score $attack boss matches 61 as @e[type=guardian,tag=exploding_guardian] run data modify entity @s CustomName set value '[{"text":"3...","color":"gold"}]'
execute if score $attack boss matches 41 as @e[type=guardian,tag=exploding_guardian] run data modify entity @s CustomName set value '[{"text":"2!","color":"red"}]'
execute if score $attack boss matches 21 as @e[type=guardian,tag=exploding_guardian] run data modify entity @s CustomName set value '[{"text":"1!!!","color":"dark_red","bold":true}]'

##Explode
execute if score $attack boss matches 1 as @e[type=guardian,tag=exploding_guardian] at @s run function game:boss/fight/guardian/toss/explode

##Particles around guardians
execute at @e[type=guardian,tag=exploding_guardian] run particle item gunpowder ~ ~ ~ 0.5 0.5 0.5 0.15 2