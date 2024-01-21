#TP Enderman to random player within range when hurt.
effect give @s weakness 1 255 true
tag @a remove enderman_warp
tag @a[tag=playing,gamemode=adventure,team=game,sort=random,limit=1] add enderman_warp
playsound entity.enderman.teleport master @a ~ ~ ~ 5 0.1
tp @s @a[distance=..30,tag=enderman_warp,sort=random,limit=1,tag=playing,gamemode=adventure,team=game]
tag @a remove enderman_warp
tag @s add enderman_cooldown