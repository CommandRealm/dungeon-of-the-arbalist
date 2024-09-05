#TP Enderman to random player within range when hurt.
effect give @s minecraft:weakness 1 255 true
tag @a remove enderman_warp
tag @a[gamemode=adventure,tag=playing,sort=random,limit=1,team=game] add enderman_warp
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 0.1
tp @s @a[gamemode=adventure,distance=..30,tag=enderman_warp,tag=playing,sort=random,limit=1,team=game]
tag @a remove enderman_warp
tag @s add enderman_cooldown
return 1