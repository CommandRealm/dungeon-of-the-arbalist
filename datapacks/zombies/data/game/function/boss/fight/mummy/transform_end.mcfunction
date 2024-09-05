##Called when the transform should end.
effect give @e[type=minecraft:wither_skeleton,tag=boss] minecraft:fire_resistance 1000000 255 true
item replace entity @e[type=minecraft:wither_skeleton,tag=boss,limit=1] weapon.mainhand with minecraft:netherite_sword[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.attack_damage",id:"minecraft:00000001-0000-0001-0000-000100000001",amount:1.0d}]},minecraft:enchantments={levels:{"minecraft:fire_aspect":1}}]
return 1