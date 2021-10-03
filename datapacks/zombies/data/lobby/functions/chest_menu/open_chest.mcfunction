##Called when a player opens an ender chest. This function clears the ender chest and determines what the start screen should be.

##Reset score
scoreboard players reset @s open_echest

function lobby:chest_menu/start


##Sound

playsound minecraft:entity.zombie.death master @s ~ ~ ~ 1 0