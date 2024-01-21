# called to refill quiver

scoreboard players set @s quiver 4
execute if entity @s[tag=trial_four_in_the_quiver,scores={arrow_delay=1000..}] run scoreboard players set @s arrow_delay 1
playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.2 1.75