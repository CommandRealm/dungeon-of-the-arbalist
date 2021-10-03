##Called to shoot a wither skull
summon wither_skull ~ ~ ~2.5 {power:[0.0,0.0,0.1],Motion:[0.0d,0.0d,0.5d],Tags:["boss_projectile","die_between_games"]}
summon wither_skull ~ ~ ~-2.5 {power:[0.0,0.0,-0.1],Motion:[0.0d,0.0d,-0.5d],Tags:["boss_projectile","die_between_games"]}
summon wither_skull ~2.5 ~ ~ {power:[0.1,0.0,0.0],Motion:[0.5d,0.0d,0.0d],Tags:["boss_projectile","die_between_games"]}
summon wither_skull ~-2.5 ~ ~ {power:[-0.1,0.0,0.0],Motion:[-0.5d,0.0d,0.0d],Tags:["boss_projectile","die_between_games"]}

summon wither_skull ~2.5 ~ ~2.5 {power:[0.1,0.0,0.1],Motion:[0.5d,0.0d,0.5d],Tags:["boss_projectile","die_between_games"]}
summon wither_skull ~2.5 ~ ~-2.5 {power:[0.1,0.0,-0.1],Motion:[0.5d,0.0d,-0.5d],Tags:["boss_projectile","die_between_games"]}
summon wither_skull ~-2.5 ~ ~2.5 {power:[-0.1,0.0,0.1],Motion:[-0.5d,0.0d,0.5d],Tags:["boss_projectile","die_between_games"]}
summon wither_skull ~-2.5 ~ ~-2.5 {power:[-0.1,0.0,-0.1],Motion:[-0.5d,0.0d,-0.5d],Tags:["boss_projectile","die_between_games"]}

##sound
playsound minecraft:entity.ravager.celebrate master @a ~ ~ ~


##Setting cooldown
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 300

