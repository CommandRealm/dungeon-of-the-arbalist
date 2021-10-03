##Called when the AVALANCHE snow hits (enemy or ground.)

##Slowness on nearby enemies
effect give @e[tag=enemy,distance=..2] slowness 5 1 false


##Particles and sound
particle item snow_block ~ ~ ~ 0.15 0.15 0.15 0.2 50
playsound minecraft:block.snow.break master @a ~ ~ ~ 1