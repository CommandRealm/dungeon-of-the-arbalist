# called to figure out how many spectral arrows we should have

# subtracting 64
scoreboard players remove @s quiver 125


item replace block 0 1 0 container.0 with spectral_arrow{spectral_arrow:1b,display:{Name:'[{"text":"B","italic":false,"color":"gold"},{"text":"o","italic":false,"color":"yellow"},{"text":"n","italic":false,"color":"gold"},{"text":"u","italic":false,"color":"yellow"},{"text":"s","italic":false,"color":"gold"},{"text":" Arrow","color":"white","italic":false}]'}}
execute store result block 0 1 0 Items[0].Count byte 1 run scoreboard players get @s quiver
item replace entity @s hotbar.7 from block 0 1 0 container.0






# adding 64
scoreboard players add @s quiver 125