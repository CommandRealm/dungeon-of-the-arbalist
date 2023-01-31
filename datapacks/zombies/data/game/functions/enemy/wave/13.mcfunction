execute store result score $rand random run loot insert 0 1 0 loot game:enemy/wave_13
execute if score $rand random matches ..10 run data modify storage game:enemy SpawnType set value "dota:zombie"
execute if score $rand random matches 11..13 run data modify storage game:enemy SpawnType set value "dota:spider"
execute if score $rand random matches 14..16 run data modify storage game:enemy SpawnType set value "dota:knight"
execute if score $rand random matches 17..19 run data modify storage game:enemy SpawnType set value "dota:brute"
execute if score $rand random matches 20..22 run data modify storage game:enemy SpawnType set value "dota:leaper"
execute if score $rand random matches 23..25 run data modify storage game:enemy SpawnType set value "dota:skeleton"
execute if score $rand random matches 26..28 run data modify storage game:enemy SpawnType set value "dota:witch"
execute if score $rand random matches 29..31 run data modify storage game:enemy SpawnType set value "dota:husk"

