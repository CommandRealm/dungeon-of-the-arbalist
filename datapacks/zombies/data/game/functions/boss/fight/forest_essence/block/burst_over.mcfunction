##Called when the burst is over.

##Making sure there aren't any blocks left.
kill @e[type=falling_block,tag=essence_block]

##Cooldowns
scoreboard players set $attack boss 0
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 50