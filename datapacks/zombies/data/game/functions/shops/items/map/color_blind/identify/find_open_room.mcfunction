##called to find open room

execute if entity @e[type=area_effect_cloud,tag=fire_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(F)","color":"#f1390e"}]'

execute if entity @e[type=area_effect_cloud,tag=water_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(W)","color":"#0e8ef1"}]'

execute if entity @e[type=area_effect_cloud,tag=earth_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(E)","color":"#b27565"}]'

execute if entity @e[type=area_effect_cloud,tag=air_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(A)","color":"#d6d6d6"}]'

execute if entity @e[type=area_effect_cloud,tag=ice_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(I.)","color":"#6fe6ff"}]'

execute if entity @e[type=area_effect_cloud,tag=lightning_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(L)","color":"yellow"}]'

execute if entity @e[type=area_effect_cloud,tag=nature_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(N)","color":"#17b00c"}]'

execute if entity @e[type=area_effect_cloud,tag=darkness_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(D)","color":"#3e2e51"}]'

execute if entity @e[type=area_effect_cloud,tag=metal_upgrade_spot,dx=31,dy=31,dz=31] unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(M)","color":"#8a8a8a"}]'



execute if entity @e[type=area_effect_cloud,tag=fire_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[F]","color":"#f1390e"}]'

execute if entity @e[type=area_effect_cloud,tag=water_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[W]","color":"#0e8ef1"}]'

execute if entity @e[type=area_effect_cloud,tag=earth_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[E]","color":"#b27565"}]'

execute if entity @e[type=area_effect_cloud,tag=air_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[A]","color":"#d6d6d6"}]'

execute if entity @e[type=area_effect_cloud,tag=ice_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[I.]","color":"#6fe6ff"}]'

execute if entity @e[type=area_effect_cloud,tag=lightning_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[L]","color":"yellow"}]'

execute if entity @e[type=area_effect_cloud,tag=nature_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[N]","color":"#17b00c"}]'

execute if entity @e[type=area_effect_cloud,tag=darkness_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[D]","color":"#3e2e51"}]'

execute if entity @e[type=area_effect_cloud,tag=metal_upgrade_spot,dx=31,dy=31,dz=31] if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[M]","color":"#8a8a8a"}]'

execute unless entity @e[type=area_effect_cloud,tag=upgrade_spot,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"[S]","color":"gold"}]'

##If there is a miniboss
execute if entity @e[type=area_effect_cloud,dx=31,dy=31,dz=31,tag=miniboss_spawn] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(B)","color":"#877c7c","obfuscated":true}]'
execute if entity @e[dx=31,dy=31,dz=31,tag=miniboss] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(B)","color":"#877c7c","obfuscated":true}]'


##If there is a player
execute if entity @a[tag=playing,team=game,dx=31,dy=31,dz=31] as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"(P)","color":"#546e5c"}]'

