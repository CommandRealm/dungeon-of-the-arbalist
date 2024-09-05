##called when we send avote end message

tag @s add sent_vote_end_message
tellraw @a[tag=playing] [{"selector":"@s","type":"selector"},{"text":" has voted to start the next wave.","color":"dark_green","type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.lodestone.place master @s ~ ~ ~ 1 0.5
return 1