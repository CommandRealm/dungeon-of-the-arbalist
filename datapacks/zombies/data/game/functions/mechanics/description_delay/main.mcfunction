##called when someone has an item description delay

scoreboard players remove @a[tag=playing,scores={desc_delay=1..}] desc_delay 1
execute as @a[tag=playing,scores={desc_delay=0}] at @s run function game:mechanics/description_delay/delay_over