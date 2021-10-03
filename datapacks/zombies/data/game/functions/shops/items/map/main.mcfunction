##Called when a player has a map.
##Seeing if a player has the map selected.
execute as @a[tag=playing,gamemode=adventure,nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}},tag=!holding_map] at @s run function game:shops/items/map/view_map
tag @a remove holding_map
tag @a[tag=playing,gamemode=adventure,nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}}] add holding_map


##Determining when the player changes rooms
execute as @a[tag=playing,gamemode=adventure,nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}}] at @s run function game:shops/items/map/check_room
