scoreboard players add $charging pug_golem_timer 1

execute if score $charging pug_golem_timer matches 5 run data modify entity @s AngerTime set value 1000000
execute if score $charging pug_golem_timer matches 51.. run attribute @s generic.movement_speed base set 0
execute if score $charging pug_golem_timer matches 51.. run tag @s add pug_stunned
execute if score $charging pug_golem_timer matches 51.. run tag @s remove pug_charging
execute if score $charging pug_golem_timer matches 51.. run scoreboard players set $charging pug_golem_timer 0