##Called when the AVALANCHE snow hits (enemy or ground.)

##Dealing damage

execute as @e[tag=enemy,distance=..2,tag=!temporary_tag] at @s run effect give @s luck 1 16 true
execute as @e[tag=enemy,distance=..2,tag=!temporary_tag] at @s run function game:enemy/take_damage

##Particles and sound
particle item coarse_dirt ~ ~ ~ 0.15 0.15 0.15 0.2 50
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 1