##Called to suse the boss scroll

##Message
tellraw @s [{"text":"=","color":"dark_green","type":"text"},{"text":"-","color":"green","type":"text"},{"text":"= ","color":"dark_green","type":"text"},{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"Boss ","color":"#ab0909","type":"text"},{"text":"Scroll","color":"#5a4f4f","type":"text"}]

##Bosses
execute if score $boss boss matches 0 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true,"type":"text"},{"text":": ","color":"gray","bold":false,"type":"text"},{"text":"Skelrath ","color":"dark_red","type":"text"},{"text":"the ","color":"gray","type":"text"},{"text":"Beast ","color":"red","type":"text"},{"text":"Warden","color":"dark_gray","type":"text"}]
execute if score $boss boss matches 1 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true,"type":"text"},{"text":": ","color":"gray","bold":false,"type":"text"},{"text":"Viscean ","color":"dark_red","type":"text"},{"text":"the ","color":"gray","type":"text"},{"text":"Overseer","color":"red","type":"text"}]
execute if score $boss boss matches 2 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true,"type":"text"},{"text":": ","color":"gray","bold":false,"type":"text"},{"text":"Nixeous ","color":"dark_red","type":"text"},{"text":"the ","color":"gray","type":"text"},{"text":"Scoundrel","color":"red","type":"text"}]
execute if score $boss boss matches 3 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true,"type":"text"},{"text":": ","color":"gray","bold":false,"type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Molten ","color":"dark_red","type":"text"},{"text":"Titan","color":"red","type":"text"}]
execute if score $boss boss matches 4 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true,"type":"text"},{"text":": ","color":"gray","bold":false,"type":"text"},{"text":"Essence ","color":"dark_red","type":"text"},{"text":"of ","color":"gray","type":"text"},{"text":"the ","color":"red","type":"text"},{"text":"Forest","color":"dark_gray","type":"text"}]

execute if score $boss boss matches 0 run tellraw @s [{"text":"- ","color":"dark_gray","type":"text"},{"text":"A controller of the ravager. Charges up before each attack.","color":"gray","type":"text"}]
execute if score $boss boss matches 1 run tellraw @s [{"text":"- ","color":"dark_gray","type":"text"},{"text":"An elder guardian who punishes foes by affecting the arena.","color":"gray","type":"text"}]
execute if score $boss boss matches 2 run tellraw @s [{"text":"- ","color":"dark_gray","type":"text"},{"text":"A stray with a few tricks up his sleeve.","color":"gray","type":"text"}]
execute if score $boss boss matches 3 run tellraw @s [{"text":"- ","color":"dark_gray","type":"text"},{"text":"A giant magma cube with fiery attacks.","color":"gray","type":"text"}]
execute if score $boss boss matches 4 run tellraw @s [{"text":"- ","color":"dark_gray","type":"text"},{"text":"An essence that can control and buff enemies.","color":"gray","type":"text"}]

##Minibosses
scoreboard players operation $calculate calculate = $miniboss_1 game
function game:shops/items/boss_scroll/miniboss
scoreboard players operation $calculate calculate = $miniboss_2 game
function game:shops/items/boss_scroll/miniboss

##sound, particles
playsound minecraft:entity.ghast.death master @s ~ ~ ~ 1 0
particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0.15 50
return 1