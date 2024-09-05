tag @s add invisible_hoodie
particle minecraft:sweep_attack ~ ~ ~ 0.25 0.75 0.25 0.25 5 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.5
effect give @s minecraft:invisibility 1000000 255 false
effect give @s minecraft:slowness 1000000 3 false
data merge entity @s {ArmorItems:[{},{},{},{}],Silent:1b}
return 1