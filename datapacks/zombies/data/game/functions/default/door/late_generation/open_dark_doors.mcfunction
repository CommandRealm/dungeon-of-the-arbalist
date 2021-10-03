##Called when the dark doors should open.


##Message
tellraw @a[tag=playing] [{"text":"You can now purchase doors to enter the middle ring.","color":"#b94a4f"}]

##sOund
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.529732
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.667420
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.793701
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.059463

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.529732
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.667420
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.793701
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1.059463

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.529732
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.667420
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.793701
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.059463

##Creating the price and displaying that price.
execute as @e[type=area_effect_cloud,tag=dark_door] at @s run function game:default/door/late_generation/create_dark_price_marker


##raycast tag
tag @e[type=area_effect_cloud,tag=dark_door] add openable