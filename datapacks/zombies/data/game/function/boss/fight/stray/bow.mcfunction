##Called to give the stray a bow.

item replace entity @e[type=minecraft:stray,tag=boss] weapon.mainhand with minecraft:bow
item replace entity @e[type=minecraft:stray,tag=boss] weapon.offhand with minecraft:tipped_arrow[minecraft:potion_contents={custom_color:6057074,custom_effects:[{id:"minecraft:slowness",duration:100,amplifier:2b}]}]

##Sound and particles
execute at @e[type=minecraft:stray,tag=boss] run playsound minecraft:item.crossbow.loading_start master @a ~ ~ ~ 1 1
execute at @e[type=minecraft:stray,tag=boss] run particle minecraft:item{item:"minecraft:bow"} ~ ~1 ~ 0.5 0.5 0.5 0.25 50

effect give @s minecraft:slowness 15 127 true


##Setting timer
scoreboard players set $attack boss 300
return 1