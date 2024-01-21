##Called to toggle compass target.

tag @s[tag=trial_gloom] add toggle
tag @s add trial_gloom
tag @s[tag=toggle] remove trial_gloom
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials