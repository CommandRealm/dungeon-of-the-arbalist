
# called to unlock iron for us
scoreboard players set @s cosmetics_trim_type 1
tag @s add trim_type_1 
tellraw @s [{"text":"- - - - - - - - - - - - - - - - - - - - - - - - - - -","color":"gray","bold":true},{"text":"\nYou have unlocked a ","color":"aqua","bold":false},{"text":"Trim ","color":"blue","bold":false},{"text":"Material","color":"light_purple"},{"text":"!\n","color":"gray"},{"text":"Material ","color":"gray","bold":true},{"text":"- ","color":"gray","bold":true},{"text":"Iron","color":"white","bold":true},{"text":"\nYou can select it inside the Menu Ender Chest!","color":"green","bold":false}]
