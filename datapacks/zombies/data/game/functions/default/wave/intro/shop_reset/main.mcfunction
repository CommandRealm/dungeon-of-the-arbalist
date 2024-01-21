# called for shop reset 

scoreboard players remove $shop_reset game 1

title @a[tag=playing] title [{"text":""}]
execute if score $shop_reset game matches 19 run title @a[tag=playing] subtitle [{"text":"S","color":"gold","bold":false}]
execute if score $shop_reset game matches 18 run title @a[tag=playing] subtitle [{"text":"Sh","color":"gold","bold":false}]
execute if score $shop_reset game matches 17 run title @a[tag=playing] subtitle [{"text":"Sho","color":"gold","bold":false}]
execute if score $shop_reset game matches 16 run title @a[tag=playing] subtitle [{"text":"Shop","color":"gold","bold":false}]
execute if score $shop_reset game matches 15 run title @a[tag=playing] subtitle [{"text":"Shops","color":"gold","bold":false}]
execute if score $shop_reset game matches 14 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"h","color":"gray"}]
execute if score $shop_reset game matches 13 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"ha","color":"gray"}]
execute if score $shop_reset game matches 12 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"hav","color":"gray"}]
execute if score $shop_reset game matches 11 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have","color":"gray"}]
execute if score $shop_reset game matches 10 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have b","color":"gray"}]
execute if score $shop_reset game matches 9 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have be","color":"gray"}]
execute if score $shop_reset game matches 8 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have bee","color":"gray"}]
execute if score $shop_reset game matches 7 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"}]
execute if score $shop_reset game matches 6 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"}]
execute if score $shop_reset game matches 5 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"},{"text":" r","color":"red"}]
execute if score $shop_reset game matches 4 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"},{"text":" re","color":"red"}]
execute if score $shop_reset game matches 3 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"},{"text":" res","color":"red"}]
execute if score $shop_reset game matches 2 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"},{"text":" rese","color":"red"}]
execute if score $shop_reset game matches 1 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"},{"text":" reset","color":"red"}]
execute if score $shop_reset game matches ..0 run title @a[tag=playing] subtitle [{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"},{"text":" reset","color":"red"},{"text":".","color":"gray"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.1 2


# sounds
execute if score $shop_reset game matches 19 as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.594604
execute if score $shop_reset game matches 15 as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.629961
execute if score $shop_reset game matches 10 as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.793701
execute if score $shop_reset game matches 7 as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.749154
execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.594604

execute if score $shop_reset game matches 19 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.594604
execute if score $shop_reset game matches 15 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.629961
execute if score $shop_reset game matches 10 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.793701
execute if score $shop_reset game matches 7 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.749154
execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.594604

execute if score $shop_reset game matches 19 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.594604
execute if score $shop_reset game matches 15 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.629961
execute if score $shop_reset game matches 10 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.793701
execute if score $shop_reset game matches 7 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.749154
execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.594604


execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.749154
execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.840896
execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.749154
execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.840896
execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.749154
execute if score $shop_reset game matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.840896

# scheduling next one
execute if score $shop_reset game matches -20.. run schedule function game:default/wave/intro/shop_reset/main 1t
execute unless score $shop_reset game matches -20.. run tag @a remove play_alternate_title