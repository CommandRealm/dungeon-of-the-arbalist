##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_2b] add unlocked
clear @a minecraft:tripwire_hook[minecraft:custom_data={key:"lookout"}]
return 1