# called when we unlock this trim

tag @s add trim_8
tellraw @s [{"text":"- - - - - - - - - - - - - - - - - - - - - - - - - - -","color":"gray","bold":true},{"text":"\nYou have unlocked an ","color":"aqua","bold":false},{"text":"Armor Trim!\n","color":"dark_aqua","bold":false},{"text":"Trim ","color":"gray","bold":true},{"text":"- ","color":"gray","bold":true},{"text":"Dune","color":"white","bold":true},{"text":"\nYou can select it inside the Menu Ender Chest!","color":"green","bold":false}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 1.85