##Called when we should spawn ourself.
scoreboard players reset @s spawn_delay
function game:enemy/summon_enemy

execute unless entity @e[scores={spawn_delay=1..},type=marker] run scoreboard players set $spawn_in_progress game 0

##sound
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0

##Particle
particle block dirt ~ ~1 ~ 0 0 0 0.5 25
particle block dirt ~ ~1 ~ 0 1 0 0.15 90