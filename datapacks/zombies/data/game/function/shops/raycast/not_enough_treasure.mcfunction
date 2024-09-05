##Called when we don't have enough treasure to make a purchase purchase
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0


##sound
execute at @e[type=minecraft:pillager,distance=..8,tag=shopkeeper,sort=nearest,limit=1] run playsound minecraft:entity.pillager.hurt master @a ~ ~ ~ 1 1
return 1