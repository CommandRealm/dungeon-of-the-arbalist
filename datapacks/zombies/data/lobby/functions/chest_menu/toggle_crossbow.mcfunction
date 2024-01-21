

# called for crossbow purchasing


tag @s[tag=sneak_crossbow_purchase] add toggle
tag @s add sneak_crossbow_purchase
tag @s[tag=toggle] remove sneak_crossbow_purchase
tag @s remove toggle

##Recalling the function
function lobby:chest_menu/start_personal_options