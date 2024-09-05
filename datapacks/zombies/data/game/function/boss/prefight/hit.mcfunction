##Called when we hit the start bossfight button

title @s title [{"text":"|| ","color":"dark_gray","obfuscated":true,"type":"text"},{"text":"☠","bold":false,"color":"dark_red","obfuscated":false,"type":"text"},{"text":" ||","color":"dark_gray","obfuscated":true,"type":"text"}]
title @s[tag=!play_alternate_title] subtitle [{"text":"Drop to ","color":"gray","type":"text"},{"text":"begin ","color":"#b94a4f","type":"text"},{"text":"the ","color":"gray","type":"text"},{"text":"Boss ","color":"#ab0909","type":"text"},{"text":"Fight","color":"#5a4f4f","bold":false,"type":"text"}]

execute if score @s try_purchase matches 1.. run function game:boss/prefight/end

return 1