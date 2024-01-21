# called for toggling group spawning

##Called to toggle compass target.

tag @s[tag=solo_spawning] add toggle
tag @s add solo_spawning
tag @s[tag=toggle] remove solo_spawning
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_personal_options