##Pregame click function.

##Toggles ready score between 0 and 1.
scoreboard players add @s ready 1
scoreboard players set @s[scores={ready=2..}] ready 0

##Reset score
scoreboard players reset @s pregame_click

##clear books if it's at fifty
execute if score $ready_players pregame matches 49 if entity @s[scores={ready=1}] run clear @a[scores={ready=0}] knowledge_book

##Clearing the book makes the function called quickly after it update the book.
clear @s knowledge_book

playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 0.5 2