##called to show us the key

##Title
tellraw @s [{"text":"                       -=-=- ","color":"dark_green"},{"text":"YOUR MAP","color":"dark_purple","bold":true},{"text":" -=-=-","color":"dark_green"}]

execute if score $time game matches 1000.. if score $second bossbar_time matches 10.. run tellraw @s [{"text":"Updated on","color":"gray"},{"text":" Wave ","color":"dark_green","bold":false},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" at ","color":"gray"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green"},{"text":":","color":"gray"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green"}]
execute if score $time game matches 1000.. if score $second bossbar_time matches ..9 run tellraw @s [{"text":"Updated on","color":"gray"},{"text":" Wave ","color":"dark_green","bold":false},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" at ","color":"gray"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green"},{"text":":","color":"gray"},{"text":"0","color":"green"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green"}]

scoreboard players operation $calculate calculate = $wave game
scoreboard players add $calculate calculate 1
execute unless score $time game matches 1000.. run tellraw @s [{"text":"Updated between","color":"gray"},{"text":" Waves ","color":"dark_green","bold":false},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" and ","color":"gray"},{"score":{"objective":"calculate","name":"$calculate"},"color":"green","bold":true}]

##key
tellraw @s [{"text":"                            -=- ","color":"gold"},{"text":"COLORS","color":"aqua","bold":false},{"text":" -=-","color":"gold"}]

tellraw @s [{"text":"             █","color":"#f1390e"},{"text":" - ","color":"gray"},{"text":"FIRE","color":"#f1390e","bold":true},{"text":"   █","color":"#0e8ef1"},{"text":" - ","color":"gray"},{"text":"WATER","color":"#0e8ef1","bold":true},{"text":"   █","color":"#b27565"},{"text":" - ","color":"gray"},{"text":"EARTH","color":"#b27565","bold":true}]

tellraw @s [{"text":"             █","color":"#d6d6d6"},{"text":" - ","color":"gray"},{"text":"AIR","color":"#d6d6d6","bold":true},{"text":"   █","color":"#6fe6ff"},{"text":" - ","color":"gray"},{"text":"ICE","color":"#6fe6ff","bold":true},{"text":"   █","color":"yellow"},{"text":" - ","color":"gray"},{"text":"LIGHTNING","color":"yellow","bold":true}]

tellraw @s [{"text":"             █","color":"#17b00c"},{"text":" - ","color":"gray"},{"text":"NATURE","color":"#17b00c","bold":true},{"text":"   █","color":"#3e2e51"},{"text":" - ","color":"gray"},{"text":"DARKNESS","color":"#3e2e51","bold":true},{"text":"   █","color":"#8a8a8a"},{"text":" - ","color":"gray"},{"text":"METAL","color":"#8a8a8a","bold":true}]


tellraw @s [{"text":"             █","color":"#4b4b4b"},{"text":" - ","color":"gray"},{"text":"EMPTY OR OUT OF RANGE","color":"#4b4b4b","bold":true}]


##shapes
tellraw @s [{"text":"                            -=- ","color":"gold"},{"text":"SHAPES","color":"red","bold":false},{"text":" -=-","color":"gold"}]
tellraw @s [{"text":"             █","color":"#6a430f"},{"text":" - ","color":"gray"},{"text":"Refer to color.","color":"#6a430f","bold":false},{"text":"\n             ▒","color":"gold"},{"text":" - ","color":"gray"},{"text":"Shop (Color indicates if it has an upgrade.)","color":"gold","bold":false},{"text":"\n             "},{"text":"▓","color":"#88cb8e","strikethrough": true},{"text":" - ","color":"gray"},{"text":"Your Location","color":"#88cb8e","bold":false},{"text":"\n             ▓","color":"#546e5c"},{"text":" - ","color":"gray"},{"text":"Player","color":"#546e5c","bold":false},{"text":"\n             ▓","color":"#ab0909","obfuscated": true},{"text":" - ","color":"gray"},{"text":"Boss or Miniboss","color":"#ab0909","bold":false}]
