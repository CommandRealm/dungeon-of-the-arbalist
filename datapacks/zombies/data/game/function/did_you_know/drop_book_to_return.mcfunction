##Called to remind us that we can crouch to get shop items descriptions

##sound
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

##msg
tellraw @s [{"text":"=","color":"dark_green","type":"text"},{"text":"-","color":"green","type":"text"},{"text":"=","color":"dark_green","type":"text"},{"text":" Did you know ","color":"gold","bold":true,"type":"text"},{"text":"that you can drop the book to return to the start button?","color":"gray","type":"text"}]

tag @s add seen_info_message_2
return 1