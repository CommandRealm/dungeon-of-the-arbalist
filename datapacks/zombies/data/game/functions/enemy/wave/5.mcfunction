# called to summon mobs for this/these wave(s)

execute store result score $rand random run loot insert 0 1 0 loot game:enemy/wave_5
execute if score $rand random matches ..10 run data modify storage game:enemy SpawnType set value "dota:zombie"
execute if score $rand random matches 11..13 run data modify storage game:enemy SpawnType set value "dota:spider"
execute if score $rand random matches 14..16 run data modify storage game:enemy SpawnType set value "dota:knight"
