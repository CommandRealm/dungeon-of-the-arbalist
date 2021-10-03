##Called when the firing is over.
data modify entity @e[type=wither_skeleton,tag=boss,limit=1] NoAI set value 0b
execute at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 1 0
execute at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:entity.zombie.hurt master @a ~ ~ ~ 1 0