##Called to re-equip the stray.

##Hoe
execute if score $phase boss matches 1 run item replace entity @e[type=minecraft:stray,tag=boss] weapon.mainhand with minecraft:diamond_hoe
execute if score $phase boss matches 2 run item replace entity @e[type=minecraft:stray,tag=boss] weapon.mainhand with minecraft:netherite_hoe

item replace entity @e[type=minecraft:stray,tag=boss] weapon.offhand with minecraft:air

##Also setting cooldown for bow attack.

scoreboard players set $cooldown boss 300
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0
return 1