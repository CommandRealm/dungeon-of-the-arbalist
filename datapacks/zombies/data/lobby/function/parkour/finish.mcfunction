##Called when we finish the parkour
##Called when we finish the parkour.

##Getting our time.
function lobby:parkour/calculate_time
##Putting it on a sign, so it's easier to read off later.
execute if score $minute calculate matches 0 run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'

execute if score $minute calculate matches 1.. if score $second calculate matches 10.. run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow","type":"score"},{"text":":","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'
execute if score $minute calculate matches 1.. if score $second calculate matches ..9 run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow","type":"score"},{"text":":","color":"gold","type":"text"},{"text":"0","color":"yellow","type":"text"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'

##Msg
team join yellow
function help:5b130277ec4f52622947ca118c76efe99bfa5640811843e011358c926b777216
tellraw @s [{"text":"☀","color":"gray","type":"text"},{"text":" You finished the parkour!","color":"gold","type":"text"}]

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
execute at @s run summon minecraft:firework_rocket ~ ~3 ~1 {Life:0,LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{colors:[I;6197861]}],flight_duration:2b}},count:1}}
clear @s minecraft:tipped_arrow


return 1