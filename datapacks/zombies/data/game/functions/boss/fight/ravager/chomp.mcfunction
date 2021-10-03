##Called to chomp as the ravager.

tp @s ~ ~ ~ facing entity @p[tag=playing,team=game]
execute at @s anchored eyes run particle crit ^ ^ ^2 1.5 1.5 1.5 0 100 force
execute at @s anchored eyes run particle crit ^ ^ ^2 1.5 1.5 1.5 0 300 normal
execute at @s anchored eyes positioned ^ ^ ^2 run kill @a[tag=playing,team=game,distance=..1.5]
execute at @s positioned ^ ^ ^2 run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 1 1.15

##Setting cooldown
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 300
