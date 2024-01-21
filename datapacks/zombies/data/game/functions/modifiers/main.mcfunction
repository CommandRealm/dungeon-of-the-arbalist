# called when modifiers could be enabled.

execute if score $random_crossbow modifiers matches 1 as @a[tag=playing,tag=mechanics] at @s run function game:modifiers/random_crossbow/main

execute if score $healthshare modifiers matches 1 as @a[tag=playing,tag=mechanics] at @s run function game:modifiers/healthshare/main

execute if score $player_swap modifiers matches 1 run function game:modifiers/player_swap/main
