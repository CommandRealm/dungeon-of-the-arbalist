##Game over msg function


title @a[tag=playing,team=dead] title [{"text":""}]

##Fade in
execute if score $end game matches 100 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"G","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 98 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Ga","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 96 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Gam","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 94 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 92 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game O","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 90 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Ov","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 88 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Ove","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 86 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Over","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 84 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Over!","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]

##Fade in sounds
execute if score $end game matches 100 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1
execute if score $end game matches 98 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.95
execute if score $end game matches 96 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.9
execute if score $end game matches 94 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.85
execute if score $end game matches 92 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.8
execute if score $end game matches 90 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.75
execute if score $end game matches 88 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.7
execute if score $end game matches 86 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.65
execute if score $end game matches 84 as @a[tag=playing,team=dead] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.6


execute if score $end game matches 80 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Over!","color":"dark_red","obfuscated":true},{"text":" ☣","color":"dark_green"}]

execute if score $end game matches 70 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Over","color":"dark_red","obfuscated":true},{"text":"!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 66 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Ove","color":"dark_red","obfuscated":true},{"text":"r!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 62 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Ov","color":"dark_red","obfuscated":true},{"text":"er!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 58 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game O","color":"dark_red","obfuscated":true},{"text":"ver!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 54 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game ","color":"dark_red","obfuscated":true},{"text":"Over!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 50 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Gam","color":"dark_red","obfuscated":true},{"text":"e Over!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 46 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Ga","color":"dark_red","obfuscated":true},{"text":"me Over!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 42 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"G","color":"dark_red","obfuscated":true},{"text":"ame Over!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]
execute if score $end game matches 38 run title @a[tag=playing,team=dead] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Game Over!","color":"dark_red","obfuscated":false},{"text":" ☣","color":"dark_green"}]


execute if score $end game matches 70 as @a[tag=playing,team=dead] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.5

execute if score $end game matches 62 as @a[tag=playing,team=dead] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.6

execute if score $end game matches 54 as @a[tag=playing,team=dead] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.7

execute if score $end game matches 46 as @a[tag=playing,team=dead] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.8

execute if score $end game matches 38 as @a[tag=playing,team=dead] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.9

