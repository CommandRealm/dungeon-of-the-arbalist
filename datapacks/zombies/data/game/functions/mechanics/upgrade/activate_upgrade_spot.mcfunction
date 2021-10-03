##called to activate an upgrade spot

##Activation tags
tag @s remove inactive
tag @s add active
tag @s add raycast


execute if entity @s[tag=fire_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","fire_upgrade_text","upgrade_text"]}
execute if entity @s[tag=water_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","water_upgrade_text","upgrade_text"]}
execute if entity @s[tag=earth_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","earth_upgrade_text","upgrade_text"]}
execute if entity @s[tag=air_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","air_upgrade_text","upgrade_text"]}
execute if entity @s[tag=ice_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","ice_upgrade_text","upgrade_text"]}
execute if entity @s[tag=lightning_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","lightning_upgrade_text","upgrade_text"]}
execute if entity @s[tag=nature_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","nature_upgrade_text","upgrade_text"]}
execute if entity @s[tag=darkness_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","darkness_upgrade_text","upgrade_text"]}
execute if entity @s[tag=metal_upgrade_spot] run summon area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","metal_upgrade_text","upgrade_text"]}

##Summoning spinning upgrade marker
summon armor_stand ~ ~-1.75 ~ {Tags:["die_between_games","upgrade_marker","needs_hat"],Marker:1b,Invulnerable:1b,Invisible:1b}
execute if entity @s[tag=fire_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with magma_block
execute if entity @s[tag=water_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with prismarine_bricks
execute if entity @s[tag=earth_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with granite
execute if entity @s[tag=air_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with white_stained_glass
execute if entity @s[tag=ice_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with ice
execute if entity @s[tag=lightning_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with glowstone
execute if entity @s[tag=nature_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with grass_block
execute if entity @s[tag=darkness_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with chiseled_polished_blackstone
execute if entity @s[tag=metal_upgrade_spot] run item replace entity @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] armor.head with iron_block

##removing tag
tag @e[tag=upgrade_marker,tag=needs_hat,sort=nearest,limit=1] remove needs_hat