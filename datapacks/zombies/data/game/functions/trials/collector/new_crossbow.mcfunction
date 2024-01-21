# called to summon a marker for our new crossbow


summon marker 0 0 0 {Tags:["die_between_games","trial_collector_crossbow","temp"]}

scoreboard players operation @e[type=marker,tag=temp] id = @s id
scoreboard players operation @e[type=marker,tag=temp] crossbow_id = @s crossbow_id


tag @e[type=marker,tag=temp] remove temp