##Called to re-equip the stray.

##Ice
execute if score $phase boss matches 1 run item replace entity @e[type=stray,tag=boss] armor.head with ice

##Hoe
##execute if score $phase boss matches 1 run item replace entity @e[type=stray,tag=boss] weapon.mainhand with diamond_hoe
##execute if score $phase boss matches 2 run item replace entity @e[type=stray,tag=boss] weapon.mainhand with netherite_hoe

##Sound and particles
execute at @e[type=stray,tag=boss] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0
execute at @e[type=stray,tag=boss] run particle witch ~ ~1 ~ 0.5 0.5 0.5 0.25 50


##Also setting cooldown for invisibility attack.

scoreboard players set $cooldown boss 200
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0