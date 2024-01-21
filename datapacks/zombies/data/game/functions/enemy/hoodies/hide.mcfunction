tag @s add invisible_hoodie
particle sweep_attack ~ ~ ~ 0.25 0.75 0.25 0.25 5 force
playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.5
effect give @s invisibility infinite 255 false
effect give @s slowness infinite 3 false
data merge entity @s {ArmorItems:[{},{},{},{}],Silent:1b}