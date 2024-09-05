# main ghost function

execute as @e[type=minecraft:zombie,tag=ghost,tag=!visible,team=enemy] at @s if entity @a[gamemode=adventure,distance=..6,tag=playing,team=game] run function game:enemy/volition/ghost/become_visible
execute as @e[type=minecraft:zombie,tag=ghost,tag=visible,team=enemy] at @s unless entity @a[gamemode=adventure,distance=..6,tag=playing,team=game] run function game:enemy/volition/ghost/become_invisible



execute as @e[type=minecraft:zombie,tag=ghost,tag=visible,team=enemy,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 1 0
# ghost particles
execute as @e[type=minecraft:zombie,tag=ghost,tag=visible,team=enemy] at @s run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0 1
return 1