##called when we should lose treasure from the treasure chest.


##message
tellraw @s [{"text":"Opening the chest caused you to gain ","color":"gold","type":"text"},{"text":"nothing.","color":"yellow","type":"text"}]


playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 1
return 1