##Main dash function
execute if score $attack boss matches 70.. at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.793701
execute if score $attack boss matches 50.. at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.943874
execute if score $attack boss matches 30.. at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 1.122462
execute if score $attack boss matches ..20 as @e[type=wither_skeleton,tag=boss,limit=1] at @s run function game:boss/fight/mummy/dash/trail