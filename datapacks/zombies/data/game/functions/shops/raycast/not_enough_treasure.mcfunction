##Called when we don't have enough treasure to make a purchase purchase
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0


##sound
execute at @e[type=pillager,tag=shopkeeper,sort=nearest,limit=1,distance=..8] run playsound minecraft:entity.pillager.hurt master @a ~ ~ ~ 1 1