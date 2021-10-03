##Called to make the stray go invisible.

item replace entity @e[type=stray,tag=boss] armor.head with air
effect give @e[type=stray,tag=boss] invisibility 15 255 false

##Sound and particles
execute at @e[type=stray,tag=boss] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0
execute at @e[type=stray,tag=boss] run particle witch ~ ~1 ~ 0.5 0.5 0.5 0.25 50

##Setting timer
scoreboard players set $attack boss 300