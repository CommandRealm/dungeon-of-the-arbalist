execute unless entity @e[type=minecraft:armor_stand,tag=cpt_king_waiting] run summon minecraft:armor_stand 3089 106 150 {Invisible:1b,Invulnerable:1b,Tags:["cpt_king_waiting","die_between_games"],Rotation:[0.0f],NoGravity:1b}
execute as @e[type=minecraft:armor_stand,tag=cpt_king_waiting] at @s run tp @e[type=minecraft:zombie,tag=cpt_king_miniboss,tag=cpt_king_waiting] ^ ^ ^2 facing ^-2 ^ ^
execute as @e[type=minecraft:armor_stand,tag=cpt_king_waiting] at @s run tp @s ~ ~ ~ ~5 ~
particle minecraft:enchant ~ ~1 ~ 0 1 0 1 1 force
execute if entity @s[nbt={HurtTime:9s}] run tag @s remove cpt_king_waiting
execute if entity @s[nbt={HurtTime:9s}] run tag @s add cpt_king_fall
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 0
execute if entity @s[nbt={HurtTime:9s}] run tp @s 3089 100 149
execute if entity @s[nbt={HurtTime:9s}] run particle minecraft:crit ~ ~ ~ 1 1 1 1 20 force
return 1