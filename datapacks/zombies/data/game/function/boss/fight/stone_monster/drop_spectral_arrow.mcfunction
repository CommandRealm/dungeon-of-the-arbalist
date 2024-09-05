##Called to drop the spectral arrow.
scoreboard players reset $spectral_arrow boss
summon minecraft:item ~ ~ ~ {Tags:["die_between_games"],Item:{id:"minecraft:spectral_arrow",components:{"minecraft:custom_name":'{"bold":true,"color":"gold","italic":false,"text":"Spectral Arrow"}'},count:1},Glowing:1b}
return 1