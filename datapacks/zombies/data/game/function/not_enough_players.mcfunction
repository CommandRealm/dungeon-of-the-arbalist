##called when not enough people are playing

function game:end
tellraw @a [{"text":"☣ ","color":"dark_green","type":"text"},{"text":"Insufficient amount of players to complete the game.","color":"red","type":"text"}]

##sound
playsound minecraft:block.note_block.flute master @a 0 66 0 100000 0
return 1