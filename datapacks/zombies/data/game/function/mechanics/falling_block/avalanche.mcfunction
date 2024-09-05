##Called when the AVALANCHE snow hits (enemy or ground.)

##Slowness on nearby enemies
effect give @e[distance=..2,tag=enemy] minecraft:slowness 5 1 false


##Particles and sound
particle minecraft:item{item:"minecraft:snow_block"} ~ ~ ~ 0.15 0.15 0.15 0.2 50
playsound minecraft:block.snow.break master @a ~ ~ ~ 1
return 1