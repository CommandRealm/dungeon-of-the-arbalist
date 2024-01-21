# called when we click a journal entry (or paper :P)

# zombie journal entry
execute unless data entity @s[advancements={journal:zombie=true}] EnderItems[{id:"minecraft:zombie_head",tag:{journal:1}}] run data merge storage game:enemy {SpawnType:"dota:zombie"}
execute unless data entity @s[advancements={journal:zombie=true}] EnderItems[{id:"minecraft:zombie_head",tag:{journal:1}}] run scoreboard players set $mob_health_wave calculate 1
execute unless data entity @s[advancements={journal:zombie=true}] EnderItems[{id:"minecraft:zombie_head",tag:{journal:1}}] run loot replace block 0 1 0 container.0 loot journal:zombie
execute unless data entity @s[advancements={journal:zombie=true}] EnderItems[{id:"minecraft:zombie_head",tag:{journal:1}}] run data merge storage lobby:journal {SpecialFeatures:'[{"text":"A default zombie.","color":"gray"}]'}
execute unless data entity @s[advancements={journal:zombie=true}] EnderItems[{id:"minecraft:zombie_head",tag:{journal:1}}] run scoreboard players operation $calculate calculate = @s j_zombie
execute unless data entity @s[advancements={journal:zombie=true}] EnderItems[{id:"minecraft:zombie_head",tag:{journal:1}}] run scoreboard players operation $calculate2 calculate = @s j_zombie_deaths

# spider journal entry
execute unless data entity @s[advancements={journal:spider=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:2}}] run data merge storage game:enemy {SpawnType:"dota:spider"}
execute unless data entity @s[advancements={journal:spider=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:2}}] run scoreboard players set $mob_health_wave calculate 3
execute unless data entity @s[advancements={journal:spider=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:2}}] run loot replace block 0 1 0 container.0 loot journal:spider
execute unless data entity @s[advancements={journal:spider=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:2}}] run data merge storage lobby:journal {SpecialFeatures:'[{"text":"A default spider.","color":"gray"}]'}
execute unless data entity @s[advancements={journal:spider=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:2}}] run scoreboard players operation $calculate calculate = @s j_spider
execute unless data entity @s[advancements={journal:spider=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:2}}] run scoreboard players operation $calculate2 calculate = @s j_spider_deaths


# knight journal entry

execute unless data entity @s[advancements={journal:knight=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:3}}] run data merge storage game:enemy {SpawnType:"dota:knight"}
execute unless data entity @s[advancements={journal:knight=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:3}}] run scoreboard players set $mob_health_wave calculate 5
execute unless data entity @s[advancements={journal:knight=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:3}}] run loot replace block 0 1 0 container.0 loot journal:knight
execute unless data entity @s[advancements={journal:knight=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:3}}] run data merge storage lobby:journal {SpecialFeatures:'[{"text":"A zombie with knockback resistance.","color":"gray"}]'}
execute unless data entity @s[advancements={journal:knight=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:3}}] run scoreboard players operation $calculate calculate = @s j_knight
execute unless data entity @s[advancements={journal:knight=true}] EnderItems[{id:"minecraft:player_head",tag:{journal:3}}] run scoreboard players operation $calculate2 calculate = @s j_knight_deaths
