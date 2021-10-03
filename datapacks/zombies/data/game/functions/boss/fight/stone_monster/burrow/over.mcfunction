##Called to end the attack.

data modify entity @e[type=wither_skeleton,tag=boss,limit=1,sort=nearest] NoGravity set value 0b
data modify entity @e[type=wither_skeleton,tag=boss,limit=1,sort=nearest] Motion[1] set value 0.3d

##speed
effect give @e[type=wither_skeleton,tag=boss] speed 3 0 true

##sound
execute at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:entity.wither_skeleton.ambient master @a ~ ~ ~ 1 0
execute at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:entity.wither_skeleton.ambient master @a ~ ~ ~ 1 0.75

##Internally ending attack
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 200
