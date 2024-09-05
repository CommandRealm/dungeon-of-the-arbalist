tag @s remove invisible_hoodie
particle minecraft:poof ~ ~ ~ 0.25 0.75 0.25 0.25 20 force
playsound minecraft:entity.turtle.egg_crack master @a ~ ~ ~ 1 .6
effect clear @s minecraft:invisibility
effect clear @s minecraft:slowness
data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:6381921},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:6381921}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1244970690,-575387971,-1499071169,1892321511],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzMjU0ZjlhMGQ0M2E4MWJlMzgwY2U2MmM4OWE4NDEzNDE3YzU3OGU4OGIwNTAzMjRhZDk0NzEyYzAifX19"}]}},count:1}],Silent:0b}
return 1