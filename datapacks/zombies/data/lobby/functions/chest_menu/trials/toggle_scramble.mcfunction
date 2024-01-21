##Called to toggle compass target.

tag @s[tag=trial_scramble] add toggle
tag @s add trial_scramble
tag @s[tag=toggle] remove trial_scramble
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials