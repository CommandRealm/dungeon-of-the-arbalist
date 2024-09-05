##Intro title and sound for starting a wave
title @a[tag=playing] title [{"text":"Wave ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0
return 1