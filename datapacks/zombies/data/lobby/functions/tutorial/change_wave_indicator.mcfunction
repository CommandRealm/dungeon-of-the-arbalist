##Called to change the wave indiactor.
tp @e[type=zombie,tag=tutorial_wave_indicator] 0 0 0
kill @e[type=zombie,tag=tutorial_wave_indicator]

scoreboard players set $wave_time tutorial 50

scoreboard players add $wave tutorial 1

execute if score $wave tutorial matches 4.. run scoreboard players set $wave tutorial 1

execute if score $wave tutorial matches 1.. run summon zombie 5 82 -44 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}
execute if score $wave tutorial matches 2.. run summon zombie 6 82 -45 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}
execute if score $wave tutorial matches 2.. run summon zombie 4 82 -45 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}
execute if score $wave tutorial matches 3.. run summon zombie 3 82 -46 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}
execute if score $wave tutorial matches 3.. run summon zombie 2 82 -47 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}

##sound
execute at @e[type=zombie,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0
execute at @e[type=zombie,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.67
execute at @e[type=zombie,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.8
