scoreboard players add @s mooshroom_regen 1
execute if score @s mooshroom_regen matches 60.. run data merge entity @s {Type:"red"}
execute if score @s mooshroom_regen matches 60.. run tag @s remove mooshroom_regen
execute if score @s mooshroom_regen matches 60.. run scoreboard players reset @s mooshroom_regen