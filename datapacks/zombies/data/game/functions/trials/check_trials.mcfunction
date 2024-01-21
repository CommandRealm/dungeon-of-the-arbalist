# called to check trials and give tags

tag @a remove active_trial

# Marking active trials
tag @a[tag=playing,team=game,tag=trial_default] add active_trial
tag @a[tag=playing,team=game,tag=trial_shopless] add active_trial
tag @a[tag=playing,team=game,tag=trial_poverty] add active_trial
tag @a[tag=playing,team=game,tag=trial_firetrail] add active_trial
tag @a[tag=playing,team=game,tag=trial_four_in_the_quiver] add active_trial
tag @a[tag=playing,team=game,tag=trial_gloom] add active_trial
tag @a[tag=playing,team=game,tag=trial_collector] add active_trial
tag @a[tag=playing,team=game,tag=trial_detonation] add active_trial
tag @a[tag=playing,team=game,tag=trial_scramble] add active_trial

# saving for later so we can regive trial

tag @a remove selected_trial_default
tag @a remove selected_trial_shopless
tag @a remove selected_trial_poverty
tag @a remove selected_trial_firetrail
tag @a remove selected_trial_four_in_the_quiver
tag @a remove selected_trial_gloom
tag @a remove selected_trial_collector
tag @a remove selected_trial_detonation
tag @a remove selected_trial_scramble
tag @a[tag=playing,team=game,tag=trial_default] add selected_trial_default
tag @a[tag=playing,team=game,tag=trial_shopless] add selected_trial_shopless
tag @a[tag=playing,team=game,tag=trial_poverty] add selected_trial_poverty
tag @a[tag=playing,team=game,tag=trial_firetrail] add selected_trial_firetrail
tag @a[tag=playing,team=game,tag=trial_four_in_the_quiver] add selected_trial_four_in_the_quiver
tag @a[tag=playing,team=game,tag=trial_gloom] add selected_trial_gloom
tag @a[tag=playing,team=game,tag=trial_collector] add selected_trial_collector
tag @a[tag=playing,team=game,tag=trial_detonation] add selected_trial_detonation
tag @a[tag=playing,team=game,tag=trial_scramble] add selected_trial_scramble