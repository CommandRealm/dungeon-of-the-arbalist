##called to remove time off the delay.
scoreboard players remove @a[gamemode=adventure,tag=playing,scores={booster_delay=1..},team=game] booster_delay 1
scoreboard players reset @a[gamemode=adventure,tag=playing,scores={booster_delay=0},team=game] booster_delay
return 1