##Called when someone has entered the boss room.

execute if score $started boss matches 0 unless score $delay boss matches 1.. run function game:boss/prefight/main
execute if score $delay boss matches 1.. run function game:boss/delay/main

execute if score $started boss matches 1 unless score $delay boss matches 1.. run function game:boss/fight/main

execute if score $started boss matches -1 unless score $delay boss matches 1.. run function game:boss/postfight/main