##Called when the tnt explodes


##Dealing damage to enemies.
effect give @e[distance=..4.25,tag=enemy,tag=!boss] minecraft:slowness 10 3 true


##sound and particles
particle minecraft:item{item:"minecraft:ice"} ~ ~ ~ 0 0 0 0.25 50 force @a
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.25
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.75
return 1