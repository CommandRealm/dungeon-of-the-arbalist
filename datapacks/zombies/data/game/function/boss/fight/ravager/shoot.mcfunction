##Called to shoot a wither skull
summon minecraft:wither_skull ~ ~ ~2.5 {Motion:[0.0d,0.0d,0.6d],Tags:["boss_projectile","die_between_games"],acceleration_power:0.1d}
summon minecraft:wither_skull ~ ~ ~-2.5 {Motion:[0.0d,0.0d,-0.6d],Tags:["boss_projectile","die_between_games"],acceleration_power:0.1d}
summon minecraft:wither_skull ~2.5 ~ ~ {Motion:[0.6d,0.0d,0.0d],Tags:["boss_projectile","die_between_games"],acceleration_power:0.1d}
summon minecraft:wither_skull ~-2.5 ~ ~ {Motion:[-0.6d,0.0d,0.0d],Tags:["boss_projectile","die_between_games"],acceleration_power:0.1d}

summon minecraft:wither_skull ~2.5 ~ ~2.5 {Motion:[0.6d,0.0d,0.6d],Tags:["boss_projectile","die_between_games"],acceleration_power:0.14142135623730953d}
summon minecraft:wither_skull ~2.5 ~ ~-2.5 {Motion:[0.6d,0.0d,-0.6d],Tags:["boss_projectile","die_between_games"],acceleration_power:0.14142135623730953d}
summon minecraft:wither_skull ~-2.5 ~ ~2.5 {Motion:[-0.6d,0.0d,0.6d],Tags:["boss_projectile","die_between_games"],acceleration_power:0.14142135623730953d}
summon minecraft:wither_skull ~-2.5 ~ ~-2.5 {Motion:[-0.6d,0.0d,-0.6d],Tags:["boss_projectile","die_between_games"],acceleration_power:0.14142135623730953d}

##sound
playsound minecraft:entity.ravager.celebrate master @a ~ ~ ~


##Setting cooldown
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 300


return 1