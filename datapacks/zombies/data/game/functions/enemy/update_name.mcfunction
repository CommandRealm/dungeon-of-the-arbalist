##Called to update our own (enemy) custom name.

##temporary tag
tag @s add temporary_tag

##setting a sign
execute if entity @s[tag=default_name] at @s run loot spawn 0 0 0 loot game:name/default
execute if entity @s[tag=miniboss_name] at @s run loot spawn 0 0 0 loot game:name/miniboss
execute if entity @s[tag=volition_name] at @s run loot spawn 0 0 0 loot game:name/volition
##Copying the sign to our namee
data modify entity @s CustomName set from entity @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}] Item.tag.display.Name
execute if entity @s[type=magma_cube,tag=mob_spawner_hitbox] at @s run data modify entity @e[type=area_effect_cloud,tag=mob_spawner_nameplate,sort=nearest,limit=1] CustomName set from entity @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}] Item.tag.display.Name
say @e[type=area_effect_cloud,tag=mob_spawner_nameplate,limit=1]

##Killing the emerald
kill @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}]

##removing temporary tag
tag @s remove temporary_tag

##