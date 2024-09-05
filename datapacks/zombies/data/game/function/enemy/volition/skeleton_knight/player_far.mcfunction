# called when there is a player nearby

item replace entity @s weapon.mainhand with minecraft:bow
tag @s remove player_nearby
playsound minecraft:item.armor.equip_leather master @a
return 1