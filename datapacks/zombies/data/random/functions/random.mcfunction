summon area_effect_cloud 0 0 0 {Tags:["random"],Age:1}
execute store result score $rand random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random %= $mod random
kill @e[type=area_effect_cloud,tag=random]