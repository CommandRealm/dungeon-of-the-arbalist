##Called when the transform is over.


##Breaking the ice.
execute at @e[type=stray,tag=boss,limit=1] run particle item ice ~ ~1.75 ~ 0.15 0.15 0.15 0.25 50
execute at @e[type=stray,tag=boss,limit=1] run particle item blue_ice ~ ~1.75 ~ 0.15 0.15 0.15 0.25 50
execute at @e[type=stray,tag=boss,limit=1] run playsound minecraft:block.glass.break master @a ~ ~1.75 ~
item replace entity @e[type=stray,tag=boss,limit=1] armor.head with air
##Hoe
item replace entity @e[type=stray,tag=boss,limit=1] weapon.mainhand with netherite_hoe

##Removing fire.
data modify entity @e[type=stray,tag=boss,limit=1] Fire set value 0s

