##called to show us the key

##Title
tellraw @s [{"text":"                       -=-=- ","color":"dark_green","type":"text"},{"text":"YOUR MAP","color":"dark_purple","bold":true,"type":"text"},{"text":" -=-=-","color":"dark_green","type":"text"}]

execute if score $time game matches 1000.. if score $second bossbar_time matches 10.. run tellraw @s [{"text":"Updated on","color":"gray","type":"text"},{"text":" Wave ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"},{"text":" at ","color":"gray","type":"text"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green","type":"score"},{"text":":","color":"gray","type":"text"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green","type":"score"}]
execute if score $time game matches 1000.. if score $second bossbar_time matches ..9 run tellraw @s [{"text":"Updated on","color":"gray","type":"text"},{"text":" Wave ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"},{"text":" at ","color":"gray","type":"text"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green","type":"score"},{"text":":","color":"gray","type":"text"},{"text":"0","color":"green","type":"text"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green","type":"score"}]

scoreboard players operation $calculate calculate = $wave game
scoreboard players add $calculate calculate 1
execute unless score $time game matches 1000.. run tellraw @s [{"text":"Updated between","color":"gray","type":"text"},{"text":" Waves ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"},{"text":" and ","color":"gray","type":"text"},{"score":{"objective":"calculate","name":"$calculate"},"color":"green","bold":true,"type":"score"}]

##key
tellraw @s [{"text":"                            -=- ","color":"gold","type":"text"},{"text":"COLORS","color":"aqua","bold":false,"type":"text"},{"text":" -=-","color":"gold","type":"text"}]

tellraw @s [{"text":"             █","color":"#f1390e","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"FIRE","color":"#f1390e","bold":true,"type":"text"},{"text":"   █","color":"#0e8ef1","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"WATER","color":"#0e8ef1","bold":true,"type":"text"},{"text":"   █","color":"#b27565","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"EARTH","color":"#b27565","bold":true,"type":"text"}]

tellraw @s [{"text":"             █","color":"#d6d6d6","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"AIR","color":"#d6d6d6","bold":true,"type":"text"},{"text":"   █","color":"#6fe6ff","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"ICE","color":"#6fe6ff","bold":true,"type":"text"},{"text":"   █","color":"yellow","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"LIGHTNING","color":"yellow","bold":true,"type":"text"}]

tellraw @s [{"text":"             █","color":"#17b00c","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"NATURE","color":"#17b00c","bold":true,"type":"text"},{"text":"   █","color":"#3e2e51","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"DARKNESS","color":"#3e2e51","bold":true,"type":"text"},{"text":"   █","color":"#8a8a8a","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"METAL","color":"#8a8a8a","bold":true,"type":"text"}]


tellraw @s [{"text":"             █","color":"#4b4b4b","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"EMPTY OR OUT OF RANGE","color":"#4b4b4b","bold":true,"type":"text"}]


##shapes
tellraw @s [{"text":"                            -=- ","color":"gold","type":"text"},{"text":"SHAPES","color":"red","bold":false,"type":"text"},{"text":" -=-","color":"gold","type":"text"}]
tellraw @s [{"text":"             █","color":"#6a430f","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Refer to color.","color":"#6a430f","bold":false,"type":"text"},{"text":"\n             ▒","color":"gold","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Shop (Color indicates if it has an upgrade.)","color":"gold","bold":false,"type":"text"},{"text":"\n             ","type":"text"},{"text":"▓","color":"#88cb8e","strikethrough":true,"type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Your Location","color":"#88cb8e","bold":false,"type":"text"},{"text":"\n             ▓","color":"#546e5c","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Player","color":"#546e5c","bold":false,"type":"text"},{"text":"\n             ▓","color":"#ab0909","obfuscated":true,"type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Boss or Miniboss","color":"#ab0909","bold":false,"type":"text"}]

return 1