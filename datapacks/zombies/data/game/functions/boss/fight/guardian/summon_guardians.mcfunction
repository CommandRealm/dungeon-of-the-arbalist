##Called to summon in the guardians that act as shields to the elder guardians.

summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_0","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_1","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_2","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_3","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_4","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_5","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_6","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_7","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_8","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_9","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_10","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}
summon guardian 2000 15 0 {Tags:["enemy","guardian_shield","guardian_shield_11","default_name","needs_initialization"],NoAI:1b,CustomNameVisible:1b}

scoreboard players set @e[type=guardian,tag=needs_initialization] enemy_health 100
execute as @e[type=guardian,tag=needs_initialization] at @s run function game:enemy/initialize

##Sound
execute at @e[type=elder_guardian] run playsound minecraft:entity.guardian.ambient_land master @a