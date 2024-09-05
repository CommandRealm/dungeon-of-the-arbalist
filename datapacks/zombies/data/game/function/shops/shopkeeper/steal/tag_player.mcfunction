# called to tag the player

# tag @s add anger_shopkeepers
playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1.9
tellraw @s [{"text":"You have ","color":"gray","type":"text"},{"text":"angered","color":"dark_red","type":"text"},{"text":" the shopkeeper","color":"gray","type":"text"},{"text":".","color":"dark_gray","type":"text"}]
return 1