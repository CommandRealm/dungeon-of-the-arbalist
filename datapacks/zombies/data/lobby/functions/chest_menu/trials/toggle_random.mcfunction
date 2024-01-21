##Called to toggle compass target.

tag @s[tag=trial_random] add toggle
tag @s add trial_random
tag @s[tag=toggle] remove trial_random
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials