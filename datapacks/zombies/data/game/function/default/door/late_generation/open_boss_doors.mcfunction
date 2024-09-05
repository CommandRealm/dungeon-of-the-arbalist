##Called when the boss doors should open.


##Message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_red","type":"text"},{"text":"You can now purchase the boss door.","color":"#877c7c","type":"text"}]

##sOund
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.594604
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.749154
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.594604
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.749154
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.594604
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.749154
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.594604
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.749154
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1


##Creating the price and displaying that price.
execute as @e[type=minecraft:marker,x=0,y=66,z=0,distance=500..,tag=boss_door] at @s run function game:default/door/late_generation/create_boss_price_marker


##raycast tag
tag @e[type=minecraft:marker,x=0,y=66,z=0,distance=500..,tag=boss_door] add openable
return 1