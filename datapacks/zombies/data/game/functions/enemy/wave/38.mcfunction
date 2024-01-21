

execute store result score $rand random if score $chosen_modifier_enemy calculate matches -1 run loot insert 0 1 0 loot game:enemy/wave_volition
execute if score $rand random matches ..13 run data modify storage game:enemy SpawnType set value "dota:zombie"
execute if score $rand random matches 14..18 run data modify storage game:enemy SpawnType set value "dota:spider"


execute if score $rand random matches 26..27 run data modify storage game:enemy SpawnType set value "dota:knight"
execute if score $rand random matches 28..35 run data modify storage game:enemy SpawnType set value "dota:wither_knight"


execute if score $rand random matches 36..37 run data modify storage game:enemy SpawnType set value "dota:brute"
execute if score $rand random matches 38..44 run data modify storage game:enemy SpawnType set value "dota:wither_brute"




execute if score $rand random matches 52..55 run data modify storage game:enemy SpawnType set value "dota:skeleton"
execute if score $rand random matches 56..61 run data modify storage game:enemy SpawnType set value "dota:witch"
execute if score $rand random matches 62..65 run data modify storage game:enemy SpawnType set value "dota:husk"

execute if score $rand random matches 66..72 run data modify storage game:enemy SpawnType set value "dota:skeleton_knight"



execute if score $rand random matches 73..77 run data modify storage game:enemy SpawnType set value "dota:bandit"

execute if score $rand random matches 78..83 run data modify storage game:enemy SpawnType set value "dota:wind_zombie"


execute if score $rand random matches 84..94 run data modify storage game:enemy SpawnType set value "dota:exploding_zombie"

execute if score $rand random matches 95..99 run data modify storage game:enemy SpawnType set value "dota:plague_zombie"



execute if score $rand random matches 19..25 run data modify storage game:enemy SpawnType set value "dota:ghost"



# adding in wither leaper
execute if score $rand random matches 45..46 run data modify storage game:enemy SpawnType set value "dota:leaper"
execute if score $rand random matches 47..51 run data modify storage game:enemy SpawnType set value "dota:wither_leaper"