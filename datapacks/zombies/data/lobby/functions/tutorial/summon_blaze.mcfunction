##Called to summon the blaze in the tutorial

summon blaze 9 85 -50 {ActiveEffects:[{Id:18,Duration:1000000,Amplifier:100b,ShowParticles:false}],Silent:1b,Rotation:[0f,0f],Invulnerable:0b,Tags:["enemy","needs_initialization","miniboss","miniboss_name","blaze_miniboss"],Attributes:[{Name:"generic.movement_speed",Base:0.0},{Name:"generic.attack_damage",Base:0.0}],CustomNameVisible:1b,NoAI:1b}
scoreboard players set @e[type=blaze,tag=enemy,tag=needs_initialization] enemy_health 300
execute as @e[type=blaze,tag=needs_initialization] at @s run function game:enemy/initialize