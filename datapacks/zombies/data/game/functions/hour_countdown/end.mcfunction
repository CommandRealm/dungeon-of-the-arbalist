##10 minute warning

tellraw @a[tag=playing] [{"text":">>> ","color":"dark_red","bold":true},{"text":"The game has ended due to time.","color":"red","bold":false}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0

function game:end