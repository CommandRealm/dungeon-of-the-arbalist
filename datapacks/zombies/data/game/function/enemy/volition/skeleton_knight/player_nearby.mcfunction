# called when there is a player nearby

item replace entity @s weapon.mainhand with minecraft:iron_sword[minecraft:attribute_modifiers={modifiers:[{id:"minecraft:000003bc-0000-03bc-0000-03bc000003bc",amount:1.0d}]}]
tag @s add player_nearby

# speed boost
effect give @s minecraft:speed 1 0 true

playsound minecraft:item.armor.equip_leather master @a
return 1