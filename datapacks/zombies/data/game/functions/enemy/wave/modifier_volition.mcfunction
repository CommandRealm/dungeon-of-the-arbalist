

execute store result score $rand random if score $chosen_modifier_enemy calculate matches -1 run loot insert 0 1 0 loot game:enemy/wave_volition
execute if score $rand random matches 2..6 run data modify storage game:enemy SpawnType set value "dota:fire_skeleton"
execute if score $rand random matches 7..15 run data modify storage game:enemy SpawnType set value "dota:rogue"
execute if score $rand random matches 16..23 run data modify storage game:enemy SpawnType set value "dota:ghost"
execute if score $rand random matches 24..30 run data modify storage game:enemy SpawnType set value "dota:wither_knight"
execute if score $rand random matches 31..37 run data modify storage game:enemy SpawnType set value "dota:wither_brute"
execute if score $rand random matches 38..40 run data modify storage game:enemy SpawnType set value "dota:fallen_arbalist"

# adding in wither leaper
execute if score $rand random matches 41..44 run data modify storage game:enemy SpawnType set value "dota:wither_leaper"

execute if score $rand random matches 45..51 run data modify storage game:enemy SpawnType set value "dota:keeper"
execute if score $rand random matches 79..87 run data modify storage game:enemy SpawnType set value "dota:keeper"


execute if score $rand random matches 52..53 run data modify storage game:enemy SpawnType set value "dota:mob_spawner"

execute if score $rand random matches 54..57 run data modify storage game:enemy SpawnType set value "dota:phantom"


execute if score $rand random matches 58..65 run data modify storage game:enemy SpawnType set value "dota:lobber"

execute if score $rand random matches 66..72 run data modify storage game:enemy SpawnType set value "dota:skeleton_knight"



execute if score $rand random matches 73..75 run data modify storage game:enemy SpawnType set value "dota:bandit"

execute if score $rand random matches 76..78 run data modify storage game:enemy SpawnType set value "dota:wind_zombie"


execute if score $rand random matches 0..1 run data modify storage game:enemy SpawnType set value "dota:bandit"


execute if score $rand random matches 88..94 run data modify storage game:enemy SpawnType set value "dota:exploding_zombie"

execute if score $rand random matches 96..99 if score $wave game matches 5.. run data modify storage game:enemy SpawnType set value "dota:plague_zombie"
execute if score $rand random matches 96..99 unless score $wave game matches 5.. run data modify storage game:enemy SpawnType set value "dota:keeper"
execute if score $rand random matches 95 run data modify storage game:enemy SpawnType set value "dota:evoker"



