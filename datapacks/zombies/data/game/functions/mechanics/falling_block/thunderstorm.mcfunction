##Called when the AVALANCHE snow hits (enemy or ground.)

##Slowness on nearby enemies
effect give @e[tag=enemy,distance=..2,tag=!boss] levitation 2 0 false


##Particles and sound
particle item gray_wool ~ ~ ~ 0.15 0.15 0.15 0.2 50
playsound minecraft:block.netherite_block.break master @a ~ ~ ~ 1 0