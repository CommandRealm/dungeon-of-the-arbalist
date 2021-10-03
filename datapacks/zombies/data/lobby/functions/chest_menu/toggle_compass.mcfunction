##Called to toggle compass target.

tag @s[tag=north_compass] add toggle
tag @s add north_compass
tag @s[tag=toggle] remove north_compass
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_personal_options