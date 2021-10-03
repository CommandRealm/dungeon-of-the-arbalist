##called to see if we can end this revive point.

execute unless entity @a[tag=playing,team=game,gamemode=adventure,distance=..5] unless entity @s[scores={revive_progress=320..}] run function game:mechanics/revive/revive_timer_over