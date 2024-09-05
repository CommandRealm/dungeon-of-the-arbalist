##called to show us the key

##Title
tellraw @s [{"text":"                       -=-=- ","color":"dark_green","type":"text"},{"text":"YOUR MAP","color":"dark_purple","bold":true,"type":"text"},{"text":" -=-=-","color":"dark_green","type":"text"}]

execute if score $time game matches 1000.. if score $second bossbar_time matches 10.. run tellraw @s [{"text":"Updated on","color":"gray","type":"text"},{"text":" Wave ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"},{"text":" at ","color":"gray","type":"text"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green","type":"score"},{"text":":","color":"gray","type":"text"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green","type":"score"}]
execute if score $time game matches 1000.. if score $second bossbar_time matches ..9 run tellraw @s [{"text":"Updated on","color":"gray","type":"text"},{"text":" Wave ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"},{"text":" at ","color":"gray","type":"text"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green","type":"score"},{"text":":","color":"gray","type":"text"},{"text":"0","color":"green","type":"text"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green","type":"score"}]

scoreboard players operation $calculate calculate = $wave game
scoreboard players add $calculate calculate 1
execute unless score $time game matches 1000.. run tellraw @s [{"text":"Updated between","color":"gray","type":"text"},{"text":" Waves ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"},{"text":" and ","color":"gray","type":"text"},{"score":{"objective":"calculate","name":"$calculate"},"color":"green","bold":true,"type":"score"}]

##key
tellraw @s [{"text":"                            -=- ","color":"gold","type":"text"},{"text":"LETTERS","color":"aqua","bold":false,"type":"text"},{"text":" -=-","color":"gold","type":"text"}]

tellraw @s [{"text":"             F","color":"#f1390e","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"FIRE","color":"#f1390e","bold":true,"type":"text"},{"text":"   W","color":"#0e8ef1","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"WATER","color":"#0e8ef1","bold":true,"type":"text"},{"text":"   E","color":"#b27565","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"EARTH","color":"#b27565","bold":true,"type":"text"}]

tellraw @s [{"text":"             A","color":"#d6d6d6","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"AIR","color":"#d6d6d6","bold":true,"type":"text"},{"text":"   I.","color":"#6fe6ff","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"ICE","color":"#6fe6ff","bold":true,"type":"text"},{"text":"   L","color":"#f0d44f","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"LIGHTNING","color":"#f0d44f","bold":true,"type":"text"}]

tellraw @s [{"text":"             N","color":"#17b00c","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"NATURE","color":"#17b00c","bold":true,"type":"text"},{"text":"   D","color":"#3e2e51","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"DARKNESS","color":"#3e2e51","bold":true,"type":"text"},{"text":"   M","color":"#8a8a8a","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"METAL","color":"#8a8a8a","bold":true,"type":"text"}]


tellraw @s [{"text":"             X","color":"#4b4b4b","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"EMPTY OR OUT OF RANGE","color":"#4b4b4b","bold":true,"type":"text"}]

tellraw @s [{"text":"             ","type":"text"},{"text":"U","color":"#88cb8e","strikethrough":false,"type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Your Location","color":"#88cb8e","bold":false,"type":"text"},{"text":"\n             P","color":"#546e5c","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Player","color":"#546e5c","bold":false,"type":"text"},{"text":"\n             B","color":"#ab0909","obfuscated":true,"type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Boss or Miniboss","color":"#ab0909","bold":false,"type":"text"}]

##shapes
tellraw @s [{"text":"                            -=- ","color":"gold","type":"text"},{"text":"Brackets","color":"red","bold":false,"type":"text"},{"text":" -=-","color":"gold","type":"text"}]
tellraw @s [{"text":"             ()","color":"#6a430f","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Refer to letter.","color":"#6a430f","bold":false,"type":"text"},{"text":"\n             []","color":"gold","type":"text"},{"text":" - ","color":"gray","type":"text"},{"text":"Shop (Color indicates if it has an upgrade.)","color":"gold","bold":false,"type":"text"}]

return 1