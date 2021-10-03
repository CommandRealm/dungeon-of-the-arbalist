##Called to re-equip the stray.

##Hoe
execute if score $phase boss matches 1 run item replace entity @e[type=stray,tag=boss] weapon.mainhand with diamond_hoe
execute if score $phase boss matches 2 run item replace entity @e[type=stray,tag=boss] weapon.mainhand with netherite_hoe

item replace entity @e[type=stray,tag=boss] weapon.offhand with air

##Also setting cooldown for bow attack.

scoreboard players set $cooldown boss 300
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0