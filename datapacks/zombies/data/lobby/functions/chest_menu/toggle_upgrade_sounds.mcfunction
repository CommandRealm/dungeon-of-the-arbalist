##Called to toggle upgrade sounds.

tag @s[tag=no_upgrade_sounds] add toggle
tag @s add no_upgrade_sounds
tag @s[tag=toggle] remove no_upgrade_sounds
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_personal_options