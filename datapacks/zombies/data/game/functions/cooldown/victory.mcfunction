##Game over msg function


title @a[tag=playing,team=won] title [{"text":""}]

##Fade in
execute if score $end game matches 100 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"V","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]
execute if score $end game matches 98 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Vi","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]
execute if score $end game matches 96 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Vic","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]
execute if score $end game matches 94 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Vict","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]
execute if score $end game matches 92 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victo","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]
execute if score $end game matches 90 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victor","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]
execute if score $end game matches 88 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victory","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]
execute if score $end game matches 86 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victory!","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]

##Fade in sounds
execute if score $end game matches 100 as @a[tag=playing,team=won] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1
execute if score $end game matches 98 as @a[tag=playing,team=won] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.95
execute if score $end game matches 96 as @a[tag=playing,team=won] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.9
execute if score $end game matches 94 as @a[tag=playing,team=won] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.85
execute if score $end game matches 92 as @a[tag=playing,team=won] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.8
execute if score $end game matches 90 as @a[tag=playing,team=won] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.75
execute if score $end game matches 88 as @a[tag=playing,team=won] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.7
execute if score $end game matches 86 as @a[tag=playing,team=won] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.65


execute if score $end game matches 80 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victory!","color":"green","obfuscated":true},{"text":" ☀","color":"gold"}]

execute if score $end game matches 70 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victory","color":"green","obfuscated":true},{"text":"!","color":"green","obfuscated":false},{"text":" ☀","color":"gold"}]
execute if score $end game matches 66 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victor","color":"green","obfuscated":true},{"text":"y!","color":"green","obfuscated":false},{"text":" ☀","color":"gold"}]
execute if score $end game matches 62 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victo","color":"green","obfuscated":true},{"text":"ry!","color":"green","obfuscated":false},{"text":" ☀","color":"gold"}]
execute if score $end game matches 58 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Vict","color":"green","obfuscated":true},{"text":"ory!","color":"green","obfuscated":false},{"text":" ☀","color":"gold"}]
execute if score $end game matches 54 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Vic","color":"green","obfuscated":true},{"text":"tory!","color":"green","obfuscated":false},{"text":" ☀","color":"gold"}]
execute if score $end game matches 50 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Vi","color":"green","obfuscated":true},{"text":"ctory!","color":"green","obfuscated":false},{"text":" ☀","color":"gold"}]
execute if score $end game matches 46 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"V","color":"green","obfuscated":true},{"text":"ictory!","color":"green","obfuscated":false},{"text":" ☀","color":"gold"}]
execute if score $end game matches 42 run title @a[tag=playing,team=won] subtitle [{"text":"☀ ","color":"gold"},{"text":"Victory!","color":"green","obfuscated":false},{"text":" ☀","color":"gold"}]


execute if score $end game matches 70 as @a[tag=playing,team=won] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.5

execute if score $end game matches 62 as @a[tag=playing,team=won] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.6

execute if score $end game matches 54 as @a[tag=playing,team=won] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.7

execute if score $end game matches 46 as @a[tag=playing,team=won] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.8

execute if score $end game matches 42 as @a[tag=playing,team=won] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.9



##If it's on easy or higher, unlock the title
execute if score $end game matches 1 if score $mode settings matches 0 if score $difficulty settings matches 1.. as @a[tag=playing,team=won] at @s run function cosmetics:title/check_unlock