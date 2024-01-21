
# removing tag
tag @s remove reroll

# giving ourselves random booster
scoreboard players set $mod random 6
function random:random


execute if score $difficulty settings matches 5.. if score $rand random matches 0 run tag @s add reroll
execute if score $difficulty settings matches 5.. if score $rand random matches 4 run tag @s add reroll
execute if score $starting_players game matches 1 if score $rand random matches 4 run tag @s add reroll
execute if entity @s[tag=reroll] run scoreboard players set $rand random -1
# giving us booster
execute if score $rand random matches 0 run loot give @s loot game:shop_items/stats/health
execute if score $rand random matches 1 run loot give @s loot game:shop_items/stats/quiver
execute if score $rand random matches 2 run loot give @s loot game:shop_items/stats/looting
execute if score $rand random matches 3 run loot give @s loot game:shop_items/stats/speed
execute if score $rand random matches 4 run loot give @s loot game:shop_items/stats/revive
execute if score $rand random matches 5 run loot give @s loot game:shop_items/stats/damage

execute if entity @s[tag=reroll] run function game:shops/items/booster_bundle/random_booster