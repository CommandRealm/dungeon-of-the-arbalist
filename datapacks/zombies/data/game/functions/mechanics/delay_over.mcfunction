##Delay over
scoreboard players reset @s arrow_delay
clear @s charcoal
clear @s leather

tag @s remove temporary_tag
##Get crossbow (ghosts were getting crossbows)
execute if entity @s[team=!enemy] run function game:mechanics/get_crossbow

##If our quiver is empty, refill it.
execute if entity @s[scores={quiver=..0}] run tag @s add temporary_tag
xp set @s[tag=temporary_tag] 0 points
execute store result score @s[tag=temporary_tag] quiver run data get entity @s Inventory[0].tag.quiver

##If we have a quiver stat.
scoreboard players add @s[scores={boost_quiver=1..,mastery_quiver=0},tag=temporary_tag] quiver 5
scoreboard players add @s[scores={boost_quiver=2..,mastery_quiver=0},tag=temporary_tag] quiver 5
scoreboard players add @s[scores={boost_quiver=3..,mastery_quiver=0},tag=temporary_tag] quiver 5
scoreboard players add @s[scores={boost_quiver=4..,mastery_quiver=0},tag=temporary_tag] quiver 5
scoreboard players add @s[scores={boost_quiver=5..,mastery_quiver=0},tag=temporary_tag] quiver 5

scoreboard players add @s[scores={mastery_quiver=1..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=2..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=3..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=4..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=5..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=6..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=7..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=8..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=9..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=10..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=11..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=12..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=13..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=14..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=15..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=16..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=17..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=18..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=19..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=20..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=21..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=22..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=23..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=24..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=25..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=26..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=27..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=28..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=29..},tag=temporary_tag] quiver 9
scoreboard players add @s[scores={mastery_quiver=30..},tag=temporary_tag] quiver 9

scoreboard players set @s[tag=trial_four_in_the_quiver,tag=temporary_tag] quiver 4

execute if entity @s[tag=temporary_tag] run function game:mechanics/hotbar_arrow_display/get_arrow

##removing temporary_tag 
tag @s remove temporary_tag
