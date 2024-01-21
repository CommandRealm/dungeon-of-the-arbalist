# Called when there is an active action bar delay
scoreboard players remove @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..}] action_bar_delay 1

# Title
execute as @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..,new_treasure=1..}] at @s run title @s actionbar [{"text":"You have ","color":"gray"},{"score":{"objective":"treasure","name":"@s"},"color":"yellow"},{"text":" treasure.","color":"gold"},{"text":" | ","color":"gray","bold":true},{"text":"+","color":"green"},{"score":{"objective":"new_treasure","name":"@s"},"color":"yellow"},{"text":" treasure","color":"gold"}]
execute as @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..,new_treasure=..-1}] at @s run function game:mechanics/action_bar_delay/display_negative_treasure
execute if score $mode settings matches 1.. as @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..,new_treasure=..-1},tag=!tutorial] at @s run function game:adventure/display_negative_treasure
execute if score $mode settings matches 1.. as @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..},tag=!tutorial] at @s run function game:adventure/display_new_treasure

# ending
execute as @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=0}] at @s run function game:mechanics/action_bar_delay/timer_over

