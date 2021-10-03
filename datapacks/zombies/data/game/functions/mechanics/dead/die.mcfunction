##Called when you die.


##Resetting score
scoreboard players reset @s death

gamemode spectator @s



##Title
title @s title [{"text":""}]
title @s subtitle [{"text":"You died! You will respawn shortly.","color":"red"}]

scoreboard players set @s respawn_timer 200

##removing tag
tag @s add needs_spectator_fix
