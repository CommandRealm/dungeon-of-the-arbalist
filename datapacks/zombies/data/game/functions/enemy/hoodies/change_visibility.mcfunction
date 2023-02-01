# Remove the invisiblity from another hoodie
execute as @e[type=zombie,tag=hoodie_miniboss,tag=invisible_hoodie,limit=1,sort=random] at @s run function game:enemy/hoodies/reveal

# Make ourself invisible
function game:enemy/hoodies/hide