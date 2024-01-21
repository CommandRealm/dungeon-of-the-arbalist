# called during trials

# collector
execute as @a[tag=playing,tag=trial_collector,team=game] at @s run function game:trials/collector/main
# footprints
execute as @a[tag=playing,tag=trial_firetrail,team=game] at @s run function game:trials/footprints/main
