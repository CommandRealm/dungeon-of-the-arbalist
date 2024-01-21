##Called to toss an exploding guardian.


##Summon
execute at @e[type=elder_guardian,tag=boss] run summon guardian ~ ~2.5 ~ {Invulnerable:0b,Tags:["die_between_games","exploding_guardian","needs_adjustments","boss_minion"],CustomNameVisible:1b,CustomName:'[{"text":"5 . . .","color":"green"}]'}


##Giving guardian motion
execute store result score $rand random run loot insert 0 1 0 loot random:4
function random:reset_chest
execute if score $rand random matches 0 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 1 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 2 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
execute if score $rand random matches 3 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
tag @e[type=guardian,tag=needs_adjustments] remove needs_adjustments

##Summon
execute at @e[type=elder_guardian,tag=boss] run summon guardian ~ ~3.5 ~ {Invulnerable:0b,Tags:["die_between_games","exploding_guardian","needs_adjustments","boss_minion"],CustomNameVisible:1b,CustomName:'[{"text":"5 . . .","color":"green"}]'}


##Giving guardian motion
execute store result score $rand random run loot insert 0 1 0 loot random:4
function random:reset_chest
execute if score $rand random matches 0 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 1 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 2 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
execute if score $rand random matches 3 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
tag @e[type=guardian,tag=needs_adjustments] remove needs_adjustments

##Summon
execute at @e[type=elder_guardian,tag=boss] run summon guardian ~ ~4.5 ~ {Invulnerable:0b,Tags:["die_between_games","exploding_guardian","needs_adjustments","boss_minion"],CustomNameVisible:1b,CustomName:'[{"text":"5 . . .","color":"green"}]'}


##Giving guardian motion
execute store result score $rand random run loot insert 0 1 0 loot random:4
function random:reset_chest
execute if score $rand random matches 0 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 1 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 2 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
execute if score $rand random matches 3 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
tag @e[type=guardian,tag=needs_adjustments] remove needs_adjustments

##Summon
execute at @e[type=elder_guardian,tag=boss] run summon guardian ~ ~4.5 ~ {Invulnerable:0b,Tags:["die_between_games","exploding_guardian","needs_adjustments","boss_minion"],CustomNameVisible:1b,CustomName:'[{"text":"5 . . .","color":"green"}]'}


##Giving guardian motion
execute store result score $rand random run loot insert 0 1 0 loot random:4
function random:reset_chest
execute if score $rand random matches 0 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 1 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 2 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
execute if score $rand random matches 3 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
tag @e[type=guardian,tag=needs_adjustments] remove needs_adjustments

##Summon
execute at @e[type=elder_guardian,tag=boss] run summon guardian ~ ~4.5 ~ {Invulnerable:0b,Tags:["die_between_games","exploding_guardian","needs_adjustments","boss_minion"],CustomNameVisible:1b,CustomName:'[{"text":"5 . . .","color":"green"}]'}


##Giving guardian motion
execute store result score $rand random run loot insert 0 1 0 loot random:4
function random:reset_chest
execute if score $rand random matches 0 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 1 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 2 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
execute if score $rand random matches 3 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
tag @e[type=guardian,tag=needs_adjustments] remove needs_adjustments

##Summon
execute at @e[type=elder_guardian,tag=boss] run summon guardian ~ ~4.5 ~ {Invulnerable:0b,Tags:["die_between_games","exploding_guardian","needs_adjustments","boss_minion"],CustomNameVisible:1b,CustomName:'[{"text":"5 . . .","color":"green"}]'}


##Giving guardian motion
execute store result score $rand random run loot insert 0 1 0 loot random:4
function random:reset_chest
execute if score $rand random matches 0 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 1 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 2 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
execute if score $rand random matches 3 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
tag @e[type=guardian,tag=needs_adjustments] remove needs_adjustments

##Summon
execute at @e[type=elder_guardian,tag=boss] run summon guardian ~ ~4.5 ~ {Invulnerable:0b,Tags:["die_between_games","exploding_guardian","needs_adjustments","boss_minion"],CustomNameVisible:1b,CustomName:'[{"text":"5 . . .","color":"green"}]'}


##Giving guardian motion
execute store result score $rand random run loot insert 0 1 0 loot random:4
function random:reset_chest
execute if score $rand random matches 0 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 1 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.0d,0.33d,0.5d]}
execute if score $rand random matches 2 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
execute if score $rand random matches 3 run data merge entity @e[type=guardian,tag=needs_adjustments,limit=1] {Motion:[0.5d,0.33d,0.0d]}
tag @e[type=guardian,tag=needs_adjustments] remove needs_adjustments

##Giving guardians resistance
effect give @e[type=guardian,tag=exploding_guardian] resistance infinite 126 true


##Playing sound
execute at @e[type=elder_guardian,tag=boss] run playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 1 1

##Start
scoreboard players set $attack boss 100