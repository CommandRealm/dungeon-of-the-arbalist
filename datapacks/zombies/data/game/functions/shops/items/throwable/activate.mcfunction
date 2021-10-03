##called when the throwable activates

##if we're tnt
execute if entity @s[tag=throwable_tnt] run function game:shops/items/throwable/tnt_explode

execute if entity @s[tag=throwable_whirlpool] run function game:shops/items/throwable/whirlpool_deploy

execute if entity @s[tag=throwable_ice] run function game:shops/items/throwable/ice_explode


##kill ourself
kill @s
