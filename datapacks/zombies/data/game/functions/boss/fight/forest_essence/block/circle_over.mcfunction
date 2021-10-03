##Called when the circle is over.

kill @e[type=falling_block,tag=essence_block]

##Cooldowns
scoreboard players set $attack boss 0
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 70