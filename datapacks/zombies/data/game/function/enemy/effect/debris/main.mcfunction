##Called when there is a debris arrow
execute at @e[type=minecraft:arrow,tag=debris_arrow] run particle minecraft:item{item:"minecraft:cobblestone"} ~ ~ ~ 0.15 0.15 0.15 0.15 1
execute at @e[type=minecraft:arrow,tag=debris_arrow] as @e[distance=..4,tag=enemy] at @s unless data entity @s {Invulnerable:1b} run function game:enemy/effect/debris/debris_damage

return 1