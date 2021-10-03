##Called to remind us that we can crouch to get shop items descriptions

##sound
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

##msg
tellraw @s [{"text":"=","color":"dark_green"},{"text":"-","color":"green"},{"text":"=","color":"dark_green"},{"text":" Did you know ","color":"gold","bold":true},{"text":"that you can drop the book to return to the start button?","color":"gray"}]

tag @s add seen_info_message_2