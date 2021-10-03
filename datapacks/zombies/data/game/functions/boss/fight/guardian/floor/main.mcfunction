##Main function for the floor attack

##Seeing if players are standing on the red glass.
execute as @a[tag=playing,tag=in_boss_room] at @s if block ~0.25 61 ~0.25 red_stained_glass run tag @s add temporary_tag
execute as @a[tag=playing,tag=in_boss_room] at @s if block ~-0.25 61 ~-0.25 red_stained_glass run tag @s add temporary_tag
execute as @a[tag=playing,tag=in_boss_room] at @s if block ~0.25 61 ~-0.25 red_stained_glass run tag @s add temporary_tag
execute as @a[tag=playing,tag=in_boss_room] at @s if block ~-0.25 61 ~0.25 red_stained_glass run tag @s add temporary_tag


##Sounds
execute as @a[tag=temporary_tag] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 0.25 0.629961
execute as @a[tag=temporary_tag] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 0.25 0.749154
execute as @a[tag=temporary_tag] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 0.25 0.943874
execute as @a[tag=temporary_tag] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 0.25 1.259921

##Particles
execute at @a[tag=temporary_tag] run particle nautilus ~ ~ ~ 0 0 0 0.5 5 normal

##Damage
execute if score $attack boss matches 1 run function game:boss/fight/guardian/floor/damage

tag @a remove temporary_tag

##Making the floor flash
execute if score $attack boss matches 50 run function game:boss/fight/guardian/floor/reset_floor
execute if score $attack boss matches 47 run function game:boss/fight/guardian/floor/activate_floor
execute if score $attack boss matches 44 run function game:boss/fight/guardian/floor/reset_floor
execute if score $attack boss matches 41 run function game:boss/fight/guardian/floor/activate_floor
