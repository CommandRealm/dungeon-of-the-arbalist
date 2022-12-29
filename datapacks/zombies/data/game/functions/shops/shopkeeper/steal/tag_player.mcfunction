# called to tag the player

# tag @s add anger_shopkeepers
playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1.9
tellraw @s [{"text":"You have ","color":"gray"},{"text":"angered","color":"dark_red"},{"text":" the shopkeeper","color":"gray"},{"text":".","color":"dark_gray"}]