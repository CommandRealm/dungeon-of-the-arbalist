##Called if there is an active leaper zombie
scoreboard players remove @e[type=#minecraft:leapers,tag=leaper_zombie] attack 1
execute as @e[type=#minecraft:leapers,tag=leaper_zombie,scores={attack=10}] at @s run function game:enemy/leaper/pause
execute as @e[type=#minecraft:leapers,tag=leaper_zombie,scores={attack=..0}] at @s unless data entity @s ActiveEffects[{Id:25}] unless data entity @s ActiveEffects[{Id:2,Amplifier:127b}] run function game:enemy/leaper/leap

execute as @e[type=#minecraft:leapers,tag=leaper_zombie,nbt={HurtTime:9s}] at @s run scoreboard players add @s attack 20