##Called when our raycast hits a default door
title @s[tag=!play_alternate_title] title [{"text":"","type":"text"}]
title @s[tag=!play_alternate_title] subtitle [{"text":"Bring the ","color":"gray","italic":false,"type":"text"},{"text":"Spectral Arrow","color":"gold","bold":true,"type":"text"},{"text":" to activate.","color":"gray","type":"text"}]
##temporary tag so we know we hit something
tag @s add temporary_tag

return 1