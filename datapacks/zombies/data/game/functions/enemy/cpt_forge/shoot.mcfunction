execute positioned ~ ~1 ~ run summon fireball ^ ^ ^1.5 {Tags:["cpt_fireball","needs_motion","die_between_games"]}

execute as @e[type=fireball,tag=cpt_fireball,tag=needs_motion] store result score $x cpt_forge_timer run data get entity @s Pos[0] 100
execute as @e[type=fireball,tag=cpt_fireball,tag=needs_motion] store result score $y cpt_forge_timer run data get entity @s Pos[1] 100
execute as @e[type=fireball,tag=cpt_fireball,tag=needs_motion] store result score $z cpt_forge_timer run data get entity @s Pos[2] 100

execute as @p[tag=playing,gamemode=adventure] store result score $px cpt_forge_timer run data get entity @s Pos[0] 100
execute as @p[tag=playing,gamemode=adventure] store result score $py cpt_forge_timer run data get entity @s Pos[1] 101
execute as @p[tag=playing,gamemode=adventure] store result score $pz cpt_forge_timer run data get entity @s Pos[2] 100

execute as @e[type=fireball,tag=cpt_fireball,tag=needs_motion] store result entity @s Motion[0] double -0.00125 run scoreboard players operation $x cpt_forge_timer -= $px cpt_forge_timer
execute as @e[type=fireball,tag=cpt_fireball,tag=needs_motion] store result entity @s Motion[1] double -0.00125 run scoreboard players operation $y cpt_forge_timer -= $py cpt_forge_timer
execute as @e[type=fireball,tag=cpt_fireball,tag=needs_motion] store result entity @s Motion[2] double -0.00125 run scoreboard players operation $z cpt_forge_timer -= $pz cpt_forge_timer

execute as @e[type=fireball,tag=cpt_fireball,tag=needs_motion] run tag @s remove needs_motion