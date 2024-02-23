

execute store result score $rand random if score $chosen_modifier_enemy calculate matches -1 run loot insert 0 1 0 loot game:enemy/wave_volition
execute if score $rand random matches ..8 run data modify storage game:enemy SpawnType set value "dota:zombie"

execute if score $rand random matches 9..15 run data modify storage game:enemy SpawnType set value "dota:rogue"

execute if score $rand random matches 16..18 run data modify storage game:enemy SpawnType set value "dota:spider"


execute if score $rand random matches 26 run data modify storage game:enemy SpawnType set value "dota:knight"
execute if score $rand random matches 27..33 run data modify storage game:enemy SpawnType set value "dota:wither_knight"


execute if score $rand random matches 34 run data modify storage game:enemy SpawnType set value "dota:brute"
execute if score $rand random matches 35..41 run data modify storage game:enemy SpawnType set value "dota:wither_brute"

# adding in wither leaper
execute if score $rand random matches 42..43 run data modify storage game:enemy SpawnType set value "dota:leaper"
execute if score $rand random matches 44..48 run data modify storage game:enemy SpawnType set value "dota:wither_leaper"

execute if score $rand random matches 49..51 run data modify storage game:enemy SpawnType set value "dota:mob_spawner"


execute if score $rand random matches 52..53 run data modify storage game:enemy SpawnType set value "dota:skeleton"
execute if score $rand random matches 54..55 run data modify storage game:enemy SpawnType set value "dota:witch"
execute if score $rand random matches 56..57 run data modify storage game:enemy SpawnType set value "dota:husk"


execute if score $rand random matches 58..65 run data modify storage game:enemy SpawnType set value "dota:lobber"

execute if score $rand random matches 66..72 run data modify storage game:enemy SpawnType set value "dota:skeleton_knight"



execute if score $rand random matches 73..77 run data modify storage game:enemy SpawnType set value "dota:bandit"

execute if score $rand random matches 78..83 run data modify storage game:enemy SpawnType set value "dota:wind_zombie"


execute if score $rand random matches 84..94 run data modify storage game:enemy SpawnType set value "dota:exploding_zombie"

execute if score $rand random matches 95..99 run data modify storage game:enemy SpawnType set value "dota:plague_zombie"



execute if score $rand random matches 19..25 run data modify storage game:enemy SpawnType set value "dota:ghost"


