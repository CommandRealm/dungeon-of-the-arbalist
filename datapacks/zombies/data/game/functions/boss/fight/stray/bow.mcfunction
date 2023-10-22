##Called to give the stray a bow.

item replace entity @e[type=stray,tag=boss] weapon.mainhand with bow
item replace entity @e[type=stray,tag=boss] weapon.offhand with tipped_arrow{custom_potion_effects:[{id:"minecraft:slowness",duration:100,amplifier:2b}],CustomPotionColor:6057074}

##Sound and particles
execute at @e[type=stray,tag=boss] run playsound minecraft:item.crossbow.loading_start master @a ~ ~ ~ 1 1
execute at @e[type=stray,tag=boss] run particle item bow ~ ~1 ~ 0.5 0.5 0.5 0.25 50

effect give @s slowness 15 127 true


##Setting timer
scoreboard players set $attack boss 300