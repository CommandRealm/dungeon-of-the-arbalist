##Called when a player has a map.
##Seeing if a player has the map selected.
execute as @a[gamemode=adventure,tag=playing,tag=!holding_map,nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}}] at @s run function game:shops/items/map/view_map
tag @a remove holding_map
tag @a[gamemode=adventure,tag=playing,nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}}] add holding_map


##Determining when the player changes rooms
execute as @a[gamemode=adventure,tag=playing,nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}}] at @s run function game:shops/items/map/check_room

return 1