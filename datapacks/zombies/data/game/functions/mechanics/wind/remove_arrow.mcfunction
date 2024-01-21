
# sound
playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 1 2
scoreboard players remove @s quiver 1
scoreboard players remove @s wind 1
execute if score @s quiver matches ..0 run function game:mechanics/wind/wind_over
execute if score @s wind matches ..0 if score @s quiver matches 1.. run function game:mechanics/wind/wind_over

# resetingg delay (it gets faster as you have less wind left.)


scoreboard players set @s[scores={wind=20..}] wind_delay 5
scoreboard players set @s[scores={wind=15..19}] wind_delay 5
scoreboard players set @s[scores={wind=10..14}] wind_delay 4
scoreboard players set @s[scores={wind=5..9}] wind_delay 3
scoreboard players set @s[scores={wind=1..4}] wind_delay 2

