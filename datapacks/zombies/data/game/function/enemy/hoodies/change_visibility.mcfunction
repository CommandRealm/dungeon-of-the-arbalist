# Remove the invisiblity from another hoodie
execute as @e[type=minecraft:zombie,tag=hoodie_miniboss,tag=invisible_hoodie,sort=random,limit=1] at @s run function game:enemy/hoodies/reveal

# Make ourself invisible
function game:enemy/hoodies/hide
return 1