##called to start our raycast
function game:mechanics/raycast/raycast
title @s[tag=!temporary_tag,tag=!in_boss_room] subtitle [{"text":""}]
tag @s remove temporary_tag

tag @e[type=item,tag=skip_raycast] remove skip_raycast
