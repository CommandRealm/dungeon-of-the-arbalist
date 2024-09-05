##Intro title and sound for starting a wave
title @a[tag=playing] title [{"text":"Wav","color":"dark_green","bold":false,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1.3
return 1