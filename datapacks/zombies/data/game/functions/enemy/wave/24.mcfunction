execute store result score $rand random if score $chosen_modifier_enemy calculate matches -1 run loot insert 0 1 0 loot game:enemy/wave_volition
execute if score $rand random matches ..19 run data modify storage game:enemy SpawnType set value "dota:zombie"
execute if score $rand random matches 20..25 run data modify storage game:enemy SpawnType set value "dota:spider"

execute if score $rand random matches 36..43 run data modify storage game:enemy SpawnType set value "dota:brute"
execute if score $rand random matches 44..51 run data modify storage game:enemy SpawnType set value "dota:leaper"
execute if score $rand random matches 52..55 run data modify storage game:enemy SpawnType set value "dota:skeleton"
execute if score $rand random matches 56..61 run data modify storage game:enemy SpawnType set value "dota:witch"
execute if score $rand random matches 62..68 run data modify storage game:enemy SpawnType set value "dota:husk"

# skele boi
execute if score $rand random matches 69..75 run data modify storage game:enemy SpawnType set value "dota:skeleton_knight"



execute if score $rand random matches 76..83 run data modify storage game:enemy SpawnType set value "dota:bandit"

execute if score $rand random matches 84..94 run data modify storage game:enemy SpawnType set value "dota:exploding_zombie"

execute if score $rand random matches 95..99 run data modify storage game:enemy SpawnType set value "dota:plague_zombie"



execute if score $rand random matches 26..27 run data modify storage game:enemy SpawnType set value "dota:knight"
execute if score $rand random matches 28..35 run data modify storage game:enemy SpawnType set value "dota:wither_knight"

