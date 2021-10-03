##Called to identify this cube.

tag @s add temporary_tag

##If there is a shop

##Is open, has shop.
execute positioned ~-16 ~-15 ~-16 if entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] run function game:shops/items/map/identify/find_open_room


##Not necessarily closed, just doesn't have an active shop.
execute positioned ~-16 ~-15 ~-16 unless entity @e[type=item,tag=shop_item,dx=31,dy=31,dz=31] run function game:shops/items/map/identify/find_closed_room


##Element upgrades

tag @s remove temporary_tag