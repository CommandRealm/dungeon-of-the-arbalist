# called to teleport out of water

scoreboard players operation $calculate calculate = $cooldown boss
function game:boss/fight/forest_essence/teleport
scoreboard players operation $cooldown boss = $calculate calculate