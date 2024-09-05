##Delay over
scoreboard players reset @s arrow_delay
clear @s minecraft:charcoal

##Get crossbow
function game:mechanics/get_crossbow

##If our quiver is empty, refill it.
execute if entity @s[scores={quiver=..0}] run tag @s add temporary_tag
xp set @s[tag=temporary_tag] 0 points
execute store result score @s[tag=temporary_tag] quiver run data get entity @s Inventory[0].components."minecraft:custom_data".quiver

##If we have a quiver stat.
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=1..,prestige_quiver=0}] quiver 5
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=2..,prestige_quiver=0}] quiver 5
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=3..,prestige_quiver=0}] quiver 5
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=4..,prestige_quiver=0}] quiver 5
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=5..,prestige_quiver=0}] quiver 5

scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=1..,prestige_quiver=1}] quiver 7
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=2..,prestige_quiver=1}] quiver 7
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=3..,prestige_quiver=1}] quiver 7
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=4..,prestige_quiver=1}] quiver 7
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=5..,prestige_quiver=1}] quiver 7

scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=1..,prestige_quiver=2}] quiver 9
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=2..,prestige_quiver=2}] quiver 9
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=3..,prestige_quiver=2}] quiver 9
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=4..,prestige_quiver=2}] quiver 9
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=5..,prestige_quiver=2}] quiver 9

scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=1..,prestige_quiver=3}] quiver 11
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=2..,prestige_quiver=3}] quiver 11
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=3..,prestige_quiver=3}] quiver 11
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=4..,prestige_quiver=3}] quiver 11
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=5..,prestige_quiver=3}] quiver 11

scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=1..,prestige_quiver=4}] quiver 13
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=2..,prestige_quiver=4}] quiver 13
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=3..,prestige_quiver=4}] quiver 13
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=4..,prestige_quiver=4}] quiver 13
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=5..,prestige_quiver=4}] quiver 13

scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=1..,prestige_quiver=5..}] quiver 15
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=2..,prestige_quiver=5..}] quiver 15
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=3..,prestige_quiver=5..}] quiver 15
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=4..,prestige_quiver=5..}] quiver 15
scoreboard players add @s[tag=temporary_tag,scores={boost_quiver=5..,prestige_quiver=5..}] quiver 15

execute if entity @s[tag=temporary_tag] run function game:mechanics/get_arrow

##removing temporary_tag 
tag @s remove temporary_tag

return 1