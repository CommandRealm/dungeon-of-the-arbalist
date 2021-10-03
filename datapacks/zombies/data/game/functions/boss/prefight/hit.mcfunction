##Called when we hit the start bossfight button

title @s title [{"text":"|| ","color":"dark_gray","obfuscated":true},{"text":"☠","bold":false,"color":"dark_red","obfuscated":false},{"text":" ||","color":"dark_gray","obfuscated":true}]
title @s subtitle [{"text":"Drop to ","color":"gray"},{"text":"begin ","color":"#b94a4f"},{"text":"the ","color":"gray"},{"text":"Boss ","color":"#ab0909"},{"text":"Fight","color":"#5a4f4f","bold":false}]

execute if score @s try_purchase matches 1.. run function game:boss/prefight/end
