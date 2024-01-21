##Called to toggle compass target.

tag @s[tag=trial_collector] add toggle
tag @s add trial_collector
tag @s[tag=toggle] remove trial_collector
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials