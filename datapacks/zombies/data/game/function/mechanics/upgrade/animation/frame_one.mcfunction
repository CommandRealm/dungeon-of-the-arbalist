##Frame one

execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=fire_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#f1390e","text":"FIRE UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=water_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#0e8ef1","text":"WATER UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'

execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=earth_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#b27565","text":"EARTH UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'

execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=air_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#d6d6d6","text":"AIR UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=ice_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#6fe6ff","text":"ICE UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=lightning_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#f0d44f","text":"LIGHTNING UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=nature_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#17b00c","text":"NATURE UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=darkness_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#3e2e51","text":"DARKNESS UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=metal_upgrade_text,scores={animation=5}] run data modify entity @s CustomName set value '{"color":"gray","extra":[{"bold":true,"color":"#544c4c","text":"METAL UPGRADE"},{"color":"gray","text":" ☄"}],"text":"☄ "}'





return 1