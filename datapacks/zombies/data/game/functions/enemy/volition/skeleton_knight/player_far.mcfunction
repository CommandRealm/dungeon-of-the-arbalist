# called when there is a player nearby

item replace entity @s weapon.mainhand with bow
item replace entity @s[tag=enhanced] weapon.mainhand with bow{Enchantments:[{id:"minecraft:power",lvl:1}]}
tag @s remove player_nearby
playsound minecraft:item.armor.equip_leather master @a