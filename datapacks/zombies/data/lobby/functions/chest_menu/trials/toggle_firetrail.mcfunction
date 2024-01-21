##Called to toggle compass target.

tag @s[tag=trial_firetrail] add toggle
tag @s add trial_firetrail
tag @s[tag=toggle] remove trial_firetrail
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials