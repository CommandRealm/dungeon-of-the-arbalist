##called to find open room

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=fire_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#f1390e","text":"█"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=water_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#0e8ef1","text":"█"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=earth_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#b27565","text":"█"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=air_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#d6d6d6","text":"█"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=ice_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#6fe6ff","text":"█"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=lightning_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"yellow","text":"█"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=nature_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#17b00c","text":"█"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=darkness_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#3e2e51","text":"█"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=metal_upgrade_spot] unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#8a8a8a","text":"█"}'



execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=fire_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#f1390e","text":"▒"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=water_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#0e8ef1","text":"▒"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=earth_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#b27565","text":"▒"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=air_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#d6d6d6","text":"▒"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=ice_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#6fe6ff","text":"▒"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=lightning_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"yellow","text":"▒"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=nature_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#17b00c","text":"▒"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=darkness_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#3e2e51","text":"▒"}'

execute if entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=metal_upgrade_spot] if entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#8a8a8a","text":"▒"}'

execute unless entity @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=upgrade_spot] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"gold","text":"▒"}'



##If there is a player
execute if entity @a[dx=31,dy=31,dz=31,tag=playing,team=game] as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#546e5c","text":"▓"}'


return 1