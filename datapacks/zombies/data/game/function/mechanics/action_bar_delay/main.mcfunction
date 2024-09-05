# Called when there is an active action bar delay
scoreboard players remove @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..}] action_bar_delay 1

# Title
execute as @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..,new_treasure=1..}] at @s run title @s actionbar [{"text":"You have ","color":"gray","type":"text"},{"score":{"objective":"treasure","name":"@s"},"color":"yellow","type":"score"},{"text":" treasure.","color":"gold","type":"text"},{"text":" | ","color":"gray","bold":true,"type":"text"},{"text":"+","color":"green","type":"text"},{"score":{"objective":"new_treasure","name":"@s"},"color":"yellow","type":"score"},{"text":" treasure","color":"gold","type":"text"}]
execute as @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..,new_treasure=..-1}] at @s run function game:mechanics/action_bar_delay/display_negative_treasure
execute if score $mode settings matches 1.. as @a[gamemode=adventure,tag=mechanics,tag=!tutorial,scores={action_bar_delay=1..,new_treasure=..-1}] at @s run function game:adventure/display_negative_treasure
execute if score $mode settings matches 1.. as @a[gamemode=adventure,tag=mechanics,tag=!tutorial,scores={action_bar_delay=1..}] at @s run function game:adventure/display_new_treasure

# ending
execute as @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=0}] at @s run function game:mechanics/action_bar_delay/timer_over


return 1