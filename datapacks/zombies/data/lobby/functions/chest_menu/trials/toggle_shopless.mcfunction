##Called to toggle compass target.

tag @s[tag=trial_shopless] add toggle
tag @s add trial_shopless
tag @s[tag=toggle] remove trial_shopless
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials