#TP Enderman to random player within range when hurt.
effect give @s weakness 1 100 true
tp @s @a[distance=..30,sort=random,limit=1,tag=playing,gamemode=adventure,team=game]
tag @s add enderman_cooldown