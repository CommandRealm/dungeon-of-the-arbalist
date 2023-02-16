##Called when our raycast hits a default door

##Seeing if our crossbow is compatible with this upgrade.

#Resetting score
scoreboard players set @s possible_upgrade -100
#Specific crossbows:
execute if entity @s[scores={crossbow_id=0}] run function game:mechanics/upgrade/crossbow_check/base
execute if entity @s[scores={crossbow_id=1}] run function game:mechanics/upgrade/crossbow_check/fire
execute if entity @s[scores={crossbow_id=2}] run function game:mechanics/upgrade/crossbow_check/water
execute if entity @s[scores={crossbow_id=3}] run function game:mechanics/upgrade/crossbow_check/earth
execute if entity @s[scores={crossbow_id=4}] run function game:mechanics/upgrade/crossbow_check/air
execute if entity @s[scores={crossbow_id=5}] run function game:mechanics/upgrade/crossbow_check/ice
execute if entity @s[scores={crossbow_id=6}] run function game:mechanics/upgrade/crossbow_check/lightning
execute if entity @s[scores={crossbow_id=7}] run function game:mechanics/upgrade/crossbow_check/nature
execute if entity @s[scores={crossbow_id=8}] run function game:mechanics/upgrade/crossbow_check/darkness
execute if entity @s[scores={crossbow_id=9}] run function game:mechanics/upgrade/crossbow_check/metal

#Specific crossbows:
execute if entity @s[scores={crossbow_id=10}] run function game:mechanics/upgrade/crossbow_check/magma
execute if entity @s[scores={crossbow_id=11}] run function game:mechanics/upgrade/crossbow_check/rain
execute if entity @s[scores={crossbow_id=12}] run function game:mechanics/upgrade/crossbow_check/boulder
execute if entity @s[scores={crossbow_id=13}] run function game:mechanics/upgrade/crossbow_check/tornado
execute if entity @s[scores={crossbow_id=14}] run function game:mechanics/upgrade/crossbow_check/frost
execute if entity @s[scores={crossbow_id=15}] run function game:mechanics/upgrade/crossbow_check/electric
execute if entity @s[scores={crossbow_id=16}] run function game:mechanics/upgrade/crossbow_check/wild
execute if entity @s[scores={crossbow_id=17}] run function game:mechanics/upgrade/crossbow_check/shadow
execute if entity @s[scores={crossbow_id=18}] run function game:mechanics/upgrade/crossbow_check/iron

execute if entity @s[scores={crossbow_id=19}] run function game:mechanics/upgrade/crossbow_check/steam
execute if entity @s[scores={crossbow_id=20}] run function game:mechanics/upgrade/crossbow_check/waterfall
execute if entity @s[scores={crossbow_id=21}] run function game:mechanics/upgrade/crossbow_check/basalt
execute if entity @s[scores={crossbow_id=22}] run function game:mechanics/upgrade/crossbow_check/conduction
execute if entity @s[scores={crossbow_id=23}] run function game:mechanics/upgrade/crossbow_check/snow
execute if entity @s[scores={crossbow_id=24}] run function game:mechanics/upgrade/crossbow_check/combustion
execute if entity @s[scores={crossbow_id=25}] run function game:mechanics/upgrade/crossbow_check/uranium
execute if entity @s[scores={crossbow_id=26}] run function game:mechanics/upgrade/crossbow_check/cumulonimbus
execute if entity @s[scores={crossbow_id=27}] run function game:mechanics/upgrade/crossbow_check/erratics

execute unless score @s possible_upgrade matches ..-1 if entity @s[predicate=minecraft:sneaking,tag=!shown_item_message] run function game:mechanics/upgrade/sneak



##CHecking AEC
execute if score $mode settings matches 1.. if entity @e[type=area_effect_cloud,tag=used_upgrade,distance=..7] run function game:mechanics/upgrade/check_use

title @s[tag=!play_alternate_title] title [{"text":""}]
title @s[scores={possible_upgrade=-100,crossbow_id=..27}] subtitle [{"text":"⚠ ","color":"dark_red"},{"text":"Incompatible upgrade!","color":"red"}]
title @s[scores={possible_upgrade=-101,crossbow_id=..27}] subtitle [{"text":"⚠ ","color":"dark_red"},{"text":"Already used!","color":"red"}]
title @s[scores={crossbow_id=28..},tag=!play_alternate_title] subtitle [{"text":"(","color":"#b18e00"},{"text":"!","color":"gold"},{"text":") ","color":"#b18e00"},{"text":"Max upgrade!","color":"yellow"}]
execute if entity @s[scores={possible_upgrade=1..,crossbow_id=..27}] run function game:mechanics/upgrade/upgrade_title

##temporary tag so we know we hit something
tag @s add temporary_tag

##Seeing if we dropped our crossbow.
execute if score @s try_purchase matches 1.. if score @s possible_upgrade matches 1.. run function game:mechanics/upgrade/upgrade_crossbow