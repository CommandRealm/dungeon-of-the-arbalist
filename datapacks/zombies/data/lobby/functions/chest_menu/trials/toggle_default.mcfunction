##Called to toggle compass target.

tag @s[tag=trial_default] add toggle
tag @s add trial_default
tag @s[tag=toggle] remove trial_default
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials