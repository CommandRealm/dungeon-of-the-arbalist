##Called to spawn players into the map.

##Find spawnpoints
function game:default/find_spawnpoints

execute as @a[tag=playing,x=2000,y=0,z=0,distance=..35] at @s run function game:default/spawn_self

##clearing effects
effect clear @a[tag=playing] levitation

##schedule quiver update score
schedule function game:update_quiver_score 1t

##title
title @a[tag=playing] title [{"text":""}]
title @a[tag=playing] subtitle [{"text":""}]
title @a[tag=playing] times 0 25 5


##Black concrete
fill 1991 0 9 2009 4 -9 barrier replace black_concrete