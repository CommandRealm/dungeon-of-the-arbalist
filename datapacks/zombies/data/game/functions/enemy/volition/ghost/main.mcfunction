# main ghost function

execute as @e[type=zombie,tag=ghost,team=enemy,tag=!visible] at @s if entity @a[tag=playing,gamemode=adventure,team=game,distance=..6] run function game:enemy/volition/ghost/become_visible
execute as @e[type=zombie,tag=ghost,team=enemy,tag=visible] at @s unless entity @a[tag=playing,gamemode=adventure,team=game,distance=..6] run function game:enemy/volition/ghost/become_invisible



execute as @e[type=zombie,tag=ghost,team=enemy,tag=visible,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 1 0
# ghost particles
execute as @e[type=zombie,tag=ghost,team=enemy,tag=visible] at @s run particle cloud ~ ~0.5 ~ 0 0 0 0 1