scoreboard players add $stunned pug_golem_timer 1
execute if score $stunned pug_golem_timer matches 10 run data merge entity @s {Invulnerable:0b}
execute if score $stunned pug_golem_timer matches 1..99 run particle minecraft:crit ~ ~3 ~ .2 .2 .2 0 12 force
execute if score $stunned pug_golem_timer matches 1..10 run playsound minecraft:entity.parrot.ambient master @a ~ ~ ~ 2 0
execute if score $stunned pug_golem_timer matches 40..50 run playsound minecraft:entity.parrot.ambient master @a ~ ~ ~ 2 0
execute if score $stunned pug_golem_timer matches 80..90 run playsound minecraft:entity.parrot.ambient master @a ~ ~ ~ 2 0
execute if score $stunned pug_golem_timer matches 100.. run tag @s remove pug_stunned
execute if score $stunned pug_golem_timer matches 100.. run scoreboard players set $stunned pug_golem_timer 0
return 1