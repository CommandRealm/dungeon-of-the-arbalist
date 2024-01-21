execute store result score $rand random if score $chosen_modifier_enemy calculate matches -1 run loot insert 0 1 0 loot game:enemy/wave_volition
execute if score $rand random matches ..19 run data modify storage game:enemy SpawnType set value "dota:zombie"
execute if score $rand random matches 20..28 run data modify storage game:enemy SpawnType set value "dota:spider"
execute if score $rand random matches 29..37 run data modify storage game:enemy SpawnType set value "dota:knight"
execute if score $rand random matches 38..46 run data modify storage game:enemy SpawnType set value "dota:brute"
execute if score $rand random matches 47..57 run data modify storage game:enemy SpawnType set value "dota:leaper"
execute if score $rand random matches 58..64 run data modify storage game:enemy SpawnType set value "dota:skeleton"
execute if score $rand random matches 65..73 run data modify storage game:enemy SpawnType set value "dota:witch"
execute if score $rand random matches 74..85 run data modify storage game:enemy SpawnType set value "dota:husk"



execute if score $rand random matches 86..94 run data modify storage game:enemy SpawnType set value "dota:exploding_zombie"

execute if score $rand random matches 95..99 run data modify storage game:enemy SpawnType set value "dota:plague_zombie"
