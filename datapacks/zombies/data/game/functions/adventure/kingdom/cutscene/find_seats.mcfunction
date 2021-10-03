##Called to mark seats


summon area_effect_cloud 3179 105.5 233.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3175 105.5 233.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3171 105.5 233.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3167 105.5 233.0 {Duration:1,Tags:["die_between_games","seat"]}

summon area_effect_cloud 3179 105.5 229.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3175 105.5 229.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3171 105.5 229.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3167 105.5 229.0 {Duration:1,Tags:["die_between_games","seat"]}

summon area_effect_cloud 3179 105.5 225.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3175 105.5 225.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3171 105.5 225.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3167 105.5 225.0 {Duration:1,Tags:["die_between_games","seat"]}

summon area_effect_cloud 3179 105.5 221.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3175 105.5 221.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3171 105.5 221.0 {Duration:1,Tags:["die_between_games","seat"]}
summon area_effect_cloud 3167 105.5 221.0 {Duration:1,Tags:["die_between_games","seat"]}

tp @a[tag=playing] 3173 105 219 0 0
gamemode adventure @a[tag=playing]
effect clear @a[tag=playing]

execute as @e[type=area_effect_cloud,tag=seat,sort=random] at @s run function game:adventure/kingdom/cutscene/find_seat
execute as @a[tag=playing] at @s run tp @s ~ ~ ~ facing entity @e[type=pillager,tag=cutscene_entity,sort=nearest,limit=1]
kill @e[type=area_effect_cloud,tag=seat]