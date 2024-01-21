# if this was default
# temporary flipping the large values (because its usually looking to get a smaller time, but these are supposed to be higher)


team join yellow @a[tag=playing]
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_hard_wave=1000000000..}] leaderboard_hard_wave *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_hard_wave2=1000000000..}] leaderboard_hard_wave2 *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_super_hard_wave=1000000000..}] leaderboard_super_hard_wave *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_super_hard_wave2=1000000000..}] leaderboard_super_hard_wave2 *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_hardcore_wave=1000000000..}] leaderboard_hardcore_wave *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_hardcore_wave2=1000000000..}] leaderboard_hardcore_wave2 *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_nightmare_wave=1000000000..}] leaderboard_nightmare_wave *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_nightmare_wave2=1000000000..}] leaderboard_nightmare_wave2 *= $-1 number


execute if score $mode settings matches 0 if score $players_during_start game matches 1 as @a[tag=playing] at @s if score $difficulty settings matches 3 if score @s wave_reached > @s leaderboard_hard_wave run function leaderboards:hard/personal_best
execute if score $mode settings matches 0 if score $players_during_start game matches 2.. as @a[tag=playing] at @s if score $difficulty settings matches 3 if score @s wave_reached > @s leaderboard_hard_wave2 run function leaderboards:hard_duo/personal_best

execute if score $mode settings matches 0 if score $players_during_start game matches 1 as @a[tag=playing] at @s if score $difficulty settings matches 4 if score @s wave_reached > @s leaderboard_super_hard_wave run function leaderboards:super_hard/personal_best
execute if score $mode settings matches 0 if score $players_during_start game matches 2.. as @a[tag=playing] at @s if score $difficulty settings matches 4 if score @s wave_reached > @s leaderboard_super_hard_wave2 run function leaderboards:super_hard_duo/personal_best

execute if score $mode settings matches 0 if score $players_during_start game matches 1 as @a[tag=playing] at @s if score $difficulty settings matches 5 if score @s wave_reached > @s leaderboard_hardcore_wave run function leaderboards:hardcore/personal_best
execute if score $mode settings matches 0 if score $players_during_start game matches 2.. as @a[tag=playing] at @s if score $difficulty settings matches 5 if score @s wave_reached > @s leaderboard_hardcore_wave2 run function leaderboards:hardcore_duo/personal_best

execute if score $mode settings matches 0 if score $players_during_start game matches 1 as @a[tag=playing] at @s if score $difficulty settings matches 6 if score @s wave_reached > @s leaderboard_nightmare_wave run function leaderboards:nightmare/personal_best
execute if score $mode settings matches 0 if score $players_during_start game matches 2.. as @a[tag=playing] at @s if score $difficulty settings matches 6 if score @s wave_reached > @s leaderboard_nightmare_wave2 run function leaderboards:nightmare_duo/personal_best



# flippng back
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_hard_wave=..-1000000000}] leaderboard_hard_wave *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_hard_wave2=..-1000000000}] leaderboard_hard_wave2 *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_super_hard_wave=..-1000000000}] leaderboard_super_hard_wave *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_super_hard_wave2=..-1000000000}] leaderboard_super_hard_wave2 *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_hardcore_wave=..-1000000000}] leaderboard_hardcore_wave *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_hardcore_wave2=..-1000000000}] leaderboard_hardcore_wave2 *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_nightmare_wave=..-1000000000}] leaderboard_nightmare_wave *= $-1 number
execute as @a[tag=playing] at @s run scoreboard players operation @s[scores={leaderboard_nightmare_wave2=..-1000000000}] leaderboard_nightmare_wave2 *= $-1 number


team join aqua @a[tag=playing]
execute as @a[tag=playing] at @s run function leaderboards:gamesplay/personal_best