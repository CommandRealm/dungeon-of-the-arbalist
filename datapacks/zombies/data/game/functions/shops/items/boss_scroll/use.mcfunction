##Called to suse the boss scroll

##Message
tellraw @s [{"text":"=","color":"dark_green"},{"text":"-","color":"green"},{"text":"= ","color":"dark_green"},{"text":"☠ ","color":"dark_gray"},{"text":"Boss ","color":"#ab0909"},{"text":"Scroll","color":"#5a4f4f"}]

##Bosses
execute if score $boss boss matches 0 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"Skelrath ","color":"dark_red"},{"text":"the ","color":"gray"},{"text":"Beast ","color":"red"},{"text":"Warden","color":"dark_gray"}]
execute if score $boss boss matches 1 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"Viscean ","color":"dark_red"},{"text":"the ","color":"gray"},{"text":"Overseer","color":"red"}]
execute if score $boss boss matches 2 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"Nixeous ","color":"dark_red"},{"text":"the ","color":"gray"},{"text":"Scoundrel","color":"red"}]
execute if score $boss boss matches 3 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Molten ","color":"dark_red"},{"text":"Titan","color":"red"}]
execute if score $boss boss matches 4 run tellraw @s ["",{"text":"Boss","color":"dark_red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"Essence ","color":"dark_red"},{"text":"of ","color":"gray"},{"text":"the ","color":"red"},{"text":"Forest","color":"dark_gray"}]
### INSERT GHAST BOSS

execute if score $boss boss matches 0 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"A controller of the ravager. Charges up before each attack.","color":"gray"}]
execute if score $boss boss matches 1 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"An elder guardian who punishes foes by affecting the arena.","color":"gray"}]
execute if score $boss boss matches 2 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"A stray with a few tricks up his sleeve.","color":"gray"}]
execute if score $boss boss matches 3 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"A giant magma cube with fiery attacks.","color":"gray"}]
execute if score $boss boss matches 4 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"An essence that can control and buff enemies.","color":"gray"}]

##Minibosses
scoreboard players operation $calculate calculate = $miniboss_1 game
function game:shops/items/boss_scroll/miniboss
scoreboard players operation $calculate calculate = $miniboss_2 game
function game:shops/items/boss_scroll/miniboss

##sound, particles
playsound minecraft:entity.ghast.death master @s ~ ~ ~ 1 0
particle witch ~ ~1 ~ 0.25 0.5 0.25 0.15 50