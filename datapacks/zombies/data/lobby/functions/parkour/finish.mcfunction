##Called when we finish the parkour
##Called when we finish the parkour.

##Getting our time.
function lobby:parkour/calculate_time
##Putting it on a sign, so it's easier to read off later.
execute if score $minute calculate matches 0 run data modify block 0 10 0 Text1 set value '[{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'

execute if score $minute calculate matches 1.. if score $second calculate matches 10.. run data modify block 0 10 0 Text1 set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow"},{"text":":","color":"gold"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'
execute if score $minute calculate matches 1.. if score $second calculate matches ..9 run data modify block 0 10 0 Text1 set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow"},{"text":":","color":"gold"},{"text":"0","color":"yellow"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'

##Msg
team join yellow
tellraw @a[x=0,y=66,z=0,distance=..500] ["",{"text":"| ","color":"gray","bold":true},{"selector":"@s"},{"text":" has finished the parkour in ","color":"gold"},{"nbt":"Text1","block":"0 10 0","interpret": true}]
tellraw @s [{"text":"☀","color":"gray"},{"text":" You finished the parkour!","color":"gold"}]

execute if score @s parkour_time matches ..700 unless score $difficulty settings matches -1 run advancement grant @s only advancements:hidden/hidden-parkour

##Seeing if it's a new personal best.
execute if score @s parkour_time < @s parkour_score run function lobby:parkour/personal_best



##rank
function general:rank

##Leave function
function lobby:parkour/leave

##advancement
execute unless score $difficulty settings matches -1 run advancement grant @s only advancements:lobby-parkour

##sound and firework
execute at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 1 2
execute at @s run summon firework_rocket ~ ~3 ~1 {Life:0,LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Colors:[I;6197861]}]}}}}
clear @s tipped_arrow

