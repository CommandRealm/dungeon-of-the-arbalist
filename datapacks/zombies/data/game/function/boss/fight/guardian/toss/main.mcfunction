##Called when the attack is active.


##Name
execute if score $attack boss matches 81 as @e[type=minecraft:guardian,tag=exploding_guardian] run data modify entity @s CustomName set value '{"color":"green","text":"4..."}'
execute if score $attack boss matches 61 as @e[type=minecraft:guardian,tag=exploding_guardian] run data modify entity @s CustomName set value '{"color":"gold","text":"3..."}'
execute if score $attack boss matches 41 as @e[type=minecraft:guardian,tag=exploding_guardian] run data modify entity @s CustomName set value '{"color":"red","text":"2!"}'
execute if score $attack boss matches 21 as @e[type=minecraft:guardian,tag=exploding_guardian] run data modify entity @s CustomName set value '{"bold":true,"color":"dark_red","text":"1!!!"}'

##Explode
execute if score $attack boss matches 1 as @e[type=minecraft:guardian,tag=exploding_guardian] at @s run function game:boss/fight/guardian/toss/explode

##Particles around guardians
execute at @e[type=minecraft:guardian,tag=exploding_guardian] run particle minecraft:item{item:"minecraft:gunpowder"} ~ ~ ~ 0.5 0.5 0.5 0.15 2
return 1