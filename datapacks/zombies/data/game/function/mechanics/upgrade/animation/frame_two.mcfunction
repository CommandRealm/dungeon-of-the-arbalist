##Frame two

execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=fire_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#f1390e","text":"FIRE UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=water_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#0e8ef1","text":"WATER UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'


execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=earth_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#b27565","text":"EARTH UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'

execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=air_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#d6d6d6","text":"AIR UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=ice_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#6fe6ff","text":"ICE UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=lightning_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#f0d44f","text":"LIGHTNING UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=nature_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#17b00c","text":"NATURE UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=darkness_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#3e2e51","text":"DARKNESS UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=metal_upgrade_text,scores={animation=10}] run data modify entity @s CustomName set value '{"color":"#d2c26c","extra":[{"bold":true,"color":"#544c4c","text":"METAL UPGRADE"},{"color":"#d2c26c","text":" ☄"}],"text":"☄ ","underlined":true}'



##Resetting our score
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=upgrade_text,scores={animation=10}] animation 0
return 1