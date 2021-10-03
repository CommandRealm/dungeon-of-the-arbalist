##Called to toggle color blind mode.

tag @s[tag=color_blind_mode] add toggle
tag @s add color_blind_mode
tag @s[tag=toggle] remove color_blind_mode
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_personal_options