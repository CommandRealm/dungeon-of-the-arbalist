##called to remove time off the delay.
scoreboard players remove @a[team=game,gamemode=adventure,tag=playing,scores={booster_delay=1..}] booster_delay 1
scoreboard players reset @a[team=game,gamemode=adventure,tag=playing,scores={booster_delay=0}] booster_delay