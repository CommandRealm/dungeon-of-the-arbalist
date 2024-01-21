##Called to toggle compass target.

tag @s[tag=trial_detonation] add toggle
tag @s add trial_detonation
tag @s[tag=toggle] remove trial_detonation
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials