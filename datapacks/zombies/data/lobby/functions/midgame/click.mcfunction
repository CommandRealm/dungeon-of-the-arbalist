##Midgame click function.

##Leaving parkour
tag @s remove parkour

##Leaving tutorial
tag @s remove tutorial
tag @s remove mechanics

##Reset score
scoreboard players reset @s click_book

##Clearing the book makes the function called quickly after it update the book.
clear @s knowledge_book

playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 100000000000000000000000000000 2

##called when we press spectate
team join spectator
tellraw @s [{"text":"You are now spectating. To return to the lobby, click ","color":"white"},{"text":"[","color":"gray","bold":true},{"text":"here","color":"white","bold":true,"clickEvent": {"action": "run_command","value":"/trigger back_to_lobby set 1"}},{"text":"] ","color":"gray","bold":true}]

##tps
tp @s @r[tag=playing,gamemode=spectator]
tp @s @r[tag=playing,gamemode=adventure]

##Bossbar
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]
execute if score $mode settings matches 0 if score $wave_length game matches 1.. run bossbar set game:wave players @a[x=0,y=66,z=0,distance=500..]
execute if score $started boss matches 1 run bossbar set game:boss players @a[x=0,y=66,z=0,distance=500..]

##gamemode
gamemode spectator @s

##resetting objective
scoreboard objectives remove back_to_lobby
scoreboard objectives add back_to_lobby trigger


execute if score @s intro_text matches 1.. run function lobby:intro_text/end
tag @s remove show_intro_text

##spectator fix
tag @s add needs_spectator_fix

