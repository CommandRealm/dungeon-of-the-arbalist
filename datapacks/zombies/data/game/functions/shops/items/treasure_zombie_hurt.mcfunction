##Called when a treasure zombie is hurt.
##removing our health
scoreboard players remove @s enemy_health 1

##summoning new treasure
loot spawn ~ ~1.67 ~ loot game:enemy_drops/treasure_zombie

##updating our name
loot spawn 0 0 0 loot game:name/treasure_zombie

##Getting our score
data modify entity @s CustomName set from entity @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}] Item.tag.display.Name


##Killing the emerald
kill @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}]


##If we died
execute if score @s enemy_health matches ..0 run playsound minecraft:entity.zombie.death master @a ~ ~ ~ 1 1.25
execute if score @s enemy_health matches ..0 run tp @s 0 0 0
execute if score @s enemy_health matches ..0 run kill @s

##sound
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 2