# checking to see if we need to say a tellraw for new crossbows

execute if score $wave game matches 5 run tellraw @s [{"text":"You can now receive ","color":"gray"},{"text":"Tier 2 ","color":"#214f53"},{"text":"crossbows","color":"#6a430f"},{"text":".","color":"gray"}]
execute if score $wave game matches 10 run tellraw @s [{"text":"You can now receive ","color":"gray"},{"text":"Tier 3 ","color":"#214f53"},{"text":"crossbows","color":"#6a430f"},{"text":".","color":"gray"}]