##Called to toggle compass target.

tag @s[tag=trial_four_in_the_quiver] add toggle
tag @s add trial_four_in_the_quiver
tag @s[tag=toggle] remove trial_four_in_the_quiver
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_trials