##Called to update our own (enemy) custom name.

##temporary tag
tag @s add temporary_tag

##setting a sign
execute if entity @s[tag=default_name] at @s run loot spawn 0 0 0 loot game:name/default
execute if entity @s[tag=miniboss_name] at @s run loot spawn 0 0 0 loot game:name/miniboss
##Copying the sign to our namee
data modify entity @s CustomName set from entity @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}] Item.tag.display.Name


##Killing the emerald
kill @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}]

##removing temporary tag
tag @s remove temporary_tag

##