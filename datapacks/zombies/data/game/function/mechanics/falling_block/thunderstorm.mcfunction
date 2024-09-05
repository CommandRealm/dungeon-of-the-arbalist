##Called when the AVALANCHE snow hits (enemy or ground.)

##Slowness on nearby enemies
function help:0b40d5f82fac5d392238c8075fb15b8ead7aa7df0d373a0cfd8445c7e419c27d


##Particles and sound
particle minecraft:item{item:"minecraft:gray_wool"} ~ ~ ~ 0.15 0.15 0.15 0.2 50
playsound minecraft:block.netherite_block.break master @a ~ ~ ~ 1 0
return 1