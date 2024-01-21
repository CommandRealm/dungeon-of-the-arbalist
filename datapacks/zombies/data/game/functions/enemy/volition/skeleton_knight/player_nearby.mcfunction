# called when there is a player nearby

item replace entity @s weapon.mainhand with iron_sword{AttributeModifiers:[{Name:"generic.attack_damage",Amount:1,UUID:[I; 956,956,956,956]}]}
tag @s add player_nearby

# speed boost
effect give @s speed 1 0 true

playsound minecraft:item.armor.equip_leather master @a