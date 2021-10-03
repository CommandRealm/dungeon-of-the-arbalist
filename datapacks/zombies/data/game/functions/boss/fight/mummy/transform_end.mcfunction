##Called when the transform should end.
effect give @e[type=wither_skeleton,tag=boss] fire_resistance 1000000 255 true
item replace entity @e[type=wither_skeleton,tag=boss,limit=1] weapon.mainhand with netherite_sword{AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:1.0,UUID:[I; 1, 1, 1, 1]}],Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}