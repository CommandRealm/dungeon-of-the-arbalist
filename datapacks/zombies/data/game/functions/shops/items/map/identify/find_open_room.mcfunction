##called to find open room

execute if entity @e[type=area_effect_cloud,tag=fire_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"#f1390e"}]'

execute if entity @e[type=area_effect_cloud,tag=water_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"#0e8ef1"}]'

execute if entity @e[type=area_effect_cloud,tag=earth_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"#b27565"}]'

execute if entity @e[type=area_effect_cloud,tag=air_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"#d6d6d6"}]'

execute if entity @e[type=area_effect_cloud,tag=ice_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"#6fe6ff"}]'

execute if entity @e[type=area_effect_cloud,tag=lightning_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"yellow"}]'

execute if entity @e[type=area_effect_cloud,tag=nature_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"#17b00c"}]'

execute if entity @e[type=area_effect_cloud,tag=darkness_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"#3e2e51"}]'

execute if entity @e[type=area_effect_cloud,tag=metal_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"█","color":"#8a8a8a"}]'



execute if entity @e[type=area_effect_cloud,tag=fire_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"#f1390e"}]'

execute if entity @e[type=area_effect_cloud,tag=water_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"#0e8ef1"}]'

execute if entity @e[type=area_effect_cloud,tag=earth_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"#b27565"}]'

execute if entity @e[type=area_effect_cloud,tag=air_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"#d6d6d6"}]'

execute if entity @e[type=area_effect_cloud,tag=ice_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"#6fe6ff"}]'

execute if entity @e[type=area_effect_cloud,tag=lightning_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"yellow"}]'

execute if entity @e[type=area_effect_cloud,tag=nature_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"#17b00c"}]'

execute if entity @e[type=area_effect_cloud,tag=darkness_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"#3e2e51"}]'

execute if entity @e[type=area_effect_cloud,tag=metal_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"#8a8a8a"}]'

execute unless entity @e[type=area_effect_cloud,tag=upgrade_spot,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▒","color":"gold"}]'



##If there is a player
execute if entity @a[tag=playing,team=game,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▓","color":"#546e5c"}]'

