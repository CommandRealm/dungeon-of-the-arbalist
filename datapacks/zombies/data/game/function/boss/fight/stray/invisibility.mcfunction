##Called to make the stray go invisible.

item replace entity @e[type=minecraft:stray,tag=boss] armor.head with minecraft:air
effect give @e[type=minecraft:stray,tag=boss] minecraft:invisibility 15 255 false

##Sound and particles
execute at @e[type=minecraft:stray,tag=boss] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0
execute at @e[type=minecraft:stray,tag=boss] run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.25 50

##Setting timer
scoreboard players set $attack boss 300
return 1