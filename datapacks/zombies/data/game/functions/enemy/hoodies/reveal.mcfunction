tag @s remove invisible_hoodie
particle poof ~ ~ ~ 0.25 0.75 0.25 0.25 20 force
playsound entity.turtle.egg_crack master @a ~ ~ ~ 1 .6
effect clear @s invisibility
effect clear @s slowness
data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6381921},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6381921}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1244970690,-575387971,-1499071169,1892321511],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzMjU0ZjlhMGQ0M2E4MWJlMzgwY2U2MmM4OWE4NDEzNDE3YzU3OGU4OGIwNTAzMjRhZDk0NzEyYzAifX19"}]}}}}],Silent:0b}