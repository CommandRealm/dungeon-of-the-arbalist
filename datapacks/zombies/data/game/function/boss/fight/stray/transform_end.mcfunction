##Called when the transform is over.


##Breaking the ice.
execute at @e[type=minecraft:stray,tag=boss,limit=1] run particle minecraft:item{item:"minecraft:ice"} ~ ~1.75 ~ 0.15 0.15 0.15 0.25 50
execute at @e[type=minecraft:stray,tag=boss,limit=1] run particle minecraft:item{item:"minecraft:blue_ice"} ~ ~1.75 ~ 0.15 0.15 0.15 0.25 50
execute at @e[type=minecraft:stray,tag=boss,limit=1] run playsound minecraft:block.glass.break master @a ~ ~1.75 ~
item replace entity @e[type=minecraft:stray,tag=boss,limit=1] armor.head with minecraft:air
##Hoe
item replace entity @e[type=minecraft:stray,tag=boss,limit=1] weapon.mainhand with minecraft:netherite_hoe

##Removing fire.
data modify entity @e[type=minecraft:stray,tag=boss,limit=1] Fire set value 0s


return 1