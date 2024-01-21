##Called to toggle compass target.

tag @s[tag=trial_poverty] add toggle
tag @s add trial_poverty
tag @s[tag=toggle] remove trial_poverty
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials