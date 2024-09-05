##Called to shoot the crossbow.

clear @p[gamemode=adventure,tag=playing,nbt={Inventory:[{id:"minecraft:spectral_arrow"}]}] minecraft:spectral_arrow 1

scoreboard players set $crossbow boss 100

title @a[tag=in_boss_room,tag=!play_alternate_title] subtitle [{"text":" ","type":"text"}]

##Killing the marker.
kill @s
return 1