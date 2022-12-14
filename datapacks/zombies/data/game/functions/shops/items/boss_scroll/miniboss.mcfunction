##miniboss boss scroll functions.

##Header
execute if score $calculate calculate matches 0 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Gravedigger","color":"red","bold":true}]
execute if score $calculate calculate matches 1 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Polar Family","color":"red","bold":true}]
execute if score $calculate calculate matches 2 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Fiery Fiend","color":"red","bold":true}]
execute if score $calculate calculate matches 3 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Ender King","color":"red","bold":true}]
execute if score $calculate calculate matches 4 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Royal Archer","color":"red","bold":true}]
execute if score $calculate calculate matches 5 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Furious Fungus","color":"red","bold":true}]
execute if score $calculate calculate matches 6 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Daring Dancer","color":"red","bold":true}]
execute if score $calculate calculate matches 7 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Scary Swarm","color":"red","bold":true}]
execute if score $calculate calculate matches 8 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Spider Queen","color":"red","bold":true}]
execute if score $calculate calculate matches 9 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Static Splitters","color":"red","bold":true}]
execute if score $calculate calculate matches 10 run tellraw @s ["",{"text":"Miniboss","color":"red","bold":true},{"text":": ","color":"gray","bold":false},{"text":"The ","color":"gray"},{"text":"Piglin Horde","color":"red","bold":true}]

##Description
execute if score $calculate calculate matches 0 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Charges up a speed boost then attacks at lightning speeds.","color":"gray"}]
execute if score $calculate calculate matches 1 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Very fast mini-polar bears on top of a tanky polar bear.","color":"gray"}]
execute if score $calculate calculate matches 2 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Shoots fireballs at you while hovering over the ground.","color":"gray"}]
execute if score $calculate calculate matches 3 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Teleports to a nearby random player when out of range.","color":"gray"}]
execute if score $calculate calculate matches 4 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Remains of a royal guard aboard a skeleton horse.","color":"gray"}]
execute if score $calculate calculate matches 5 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Creates a poison cloud when hit in its red form.","color":"gray"}]
execute if score $calculate calculate matches 6 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Inflicts blindness, goes invisible, and creates clones to attack you.","color":"gray"}]
execute if score $calculate calculate matches 7 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"An enraged swarm of bees that stings you with no mercy.","color":"gray"}]
execute if score $calculate calculate matches 8 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Summons its cave spider underlings to attack you.","color":"gray"}]
execute if score $calculate calculate matches 9 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"Electric slimes that spark electricity when hit.","color":"gray"}]
execute if score $calculate calculate matches 10 run tellraw @s [{"text":"- ","color":"dark_gray"},{"text":"A group of dangerous inhabitants of a fiery dimension.","color":"gray"}]