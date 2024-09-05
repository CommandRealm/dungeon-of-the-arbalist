##Midgame click function.

##Leaving parkour
tag @s remove parkour

##Leaving tutorial
tag @s remove tutorial
tag @s remove mechanics

##Reset score
scoreboard players reset @s pregame_click

##Clearing the book makes the function called quickly after it update the book.
clear @s minecraft:knowledge_book

playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 100000000000000000000000000000 2

##called when we press spectate
team join spectator
tellraw @s [{"text":"You are now spectating. To return to the lobby, click ","color":"white","type":"text"},{"text":"[","color":"gray","bold":true,"type":"text"},{"text":"here","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/trigger back_to_lobby set 1"},"type":"text"},{"text":"] ","color":"gray","bold":true,"type":"text"}]

##tps
tp @s @r[gamemode=spectator,tag=playing]
tp @s @r[gamemode=adventure,tag=playing]

##Bossbar
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]
execute if score $mode settings matches 0 if score $wave_length game matches 1.. run bossbar set game:wave players @a[x=0,y=66,z=0,distance=500..]
execute if score $started boss matches 1 run bossbar set game:boss players @a[x=0,y=66,z=0,distance=500..]

##gamemode
gamemode spectator @s

##resetting objective
scoreboard objectives remove back_to_lobby
scoreboard objectives add back_to_lobby trigger



##spectator fix
tag @s add needs_spectator_fix


return 1