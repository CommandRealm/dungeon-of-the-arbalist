##Called to summon the blaze in the tutorial

summon minecraft:blaze 9 85 -50 {Silent:1b,Rotation:[0.0f,0.0f],Invulnerable:0b,Tags:["enemy","needs_initialization","miniboss","miniboss_name","blaze_miniboss"],CustomNameVisible:1b,NoAI:1b,active_effects:[{id:"minecraft:weakness",duration:1000000,amplifier:100b,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:0.0d},{id:"minecraft:generic.attack_damage",base:0.0d}]}
scoreboard players set @e[type=minecraft:blaze,tag=enemy,tag=needs_initialization] enemy_health 300
execute as @e[type=minecraft:blaze,tag=needs_initialization] at @s run function game:enemy/initialize
return 1