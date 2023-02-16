##Called to shoot the crossbow.

clear @p[tag=playing,nbt={Inventory:[{id:"minecraft:spectral_arrow"}]},gamemode=adventure] spectral_arrow 1

scoreboard players set $crossbow boss 100

title @a[tag=in_boss_room,tag=!play_alternate_title] subtitle [{"text":" "}]

##Killing the marker.
kill @s