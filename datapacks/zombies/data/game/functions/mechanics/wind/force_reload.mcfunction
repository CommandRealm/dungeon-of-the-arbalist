# called to force a reload


# copying crossbow to offhand (so its as if we reloaded naturally)
item replace entity @s weapon.offhand from entity @s hotbar.0
item replace entity @s hotbar.0 with air
execute unless entity @s[tag=!trial_four_in_the_quiver] run function game:mechanics/reload
tag @s remove temporary_tag