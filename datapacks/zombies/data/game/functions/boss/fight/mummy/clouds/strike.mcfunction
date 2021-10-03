##Called to strike

playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1
particle flash ~ ~ ~ 0 0 0 0 1

scoreboard players set $calculate calculate 32

function game:boss/fight/mummy/clouds/downward_raycast

kill @s