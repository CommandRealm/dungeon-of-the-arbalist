##Called to start the burrow.


##Setting the delay to something ridiculous.
scoreboard players set $attack boss 2147483647

##no gravity
data modify entity @e[type=wither_skeleton,tag=boss,limit=1] NoGravity set value 1b
data modify entity @e[type=wither_skeleton,tag=boss,limit=1] Invulnerable set value 1b

##Clearing blocks
function game:boss/fight/stone_monster/blocks/clear