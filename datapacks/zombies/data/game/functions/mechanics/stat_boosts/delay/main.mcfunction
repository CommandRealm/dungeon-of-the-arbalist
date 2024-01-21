##called to remove time off the delay.
scoreboard players remove @a[team=game,gamemode=adventure,tag=playing,scores={booster_delay=1..}] booster_delay 1
execute as @a[team=game,gamemode=adventure,tag=playing,scores={booster_delay=0}] at @s run function game:mechanics/stat_boosts/delay/delay_over