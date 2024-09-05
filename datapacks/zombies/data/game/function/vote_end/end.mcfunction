##Called when the game should end from votes.

function game:end
tellraw @a [{"text":"☣ ","color":"dark_green","type":"text"},{"text":"The game has ended due to votes.","color":"gray","type":"text"}]
return 1