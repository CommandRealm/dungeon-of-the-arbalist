##Grave punch effect
scoreboard players set @s punch_animation 50

execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~ ~1 ~ {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~.6244 ~1 ~ {ArmorItems:[{},{},{},{id:"minecraft:chiseled_stone_bricks",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~1.2488 ~1 ~ {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~ ~1.6244 ~ {ArmorItems:[{},{},{},{id:"minecraft:smooth_stone_slab",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~1.2488 ~1.6244 ~ {ArmorItems:[{},{},{},{id:"minecraft:smooth_stone_slab",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~ ~.3756 ~ {ArmorItems:[{},{},{},{id:"minecraft:dirt",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~.6244 ~.3756 ~ {ArmorItems:[{},{},{},{id:"minecraft:dirt",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~1.2488 ~.3756 ~ {ArmorItems:[{},{},{},{id:"minecraft:dirt",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~ ~.3756 ~-.6244 {ArmorItems:[{},{},{},{id:"minecraft:podzol",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~.6244 ~.3756 ~-.6244 {ArmorItems:[{},{},{},{id:"minecraft:coarse_dirt",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~1.2488 ~.3756 ~-.6244 {ArmorItems:[{},{},{},{id:"minecraft:podzol",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~ ~.3756 ~-1.2488 {ArmorItems:[{},{},{},{id:"minecraft:podzol",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~.6244 ~.3756 ~-1.2488 {ArmorItems:[{},{},{},{id:"minecraft:coarse_dirt",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~1.2488 ~.3756 ~-1.2488 {ArmorItems:[{},{},{},{id:"minecraft:podzol",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ~ ~-2 ~ run summon minecraft:armor_stand ~.6244 ~1.6244 ~ {ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}],NoGravity:1,Tags:["die_between_games","grave","on_death_timer","needs_death_timer"],Invisible:1,Marker:1b,Invulnerable:1,DisabledSlots:2039583}

scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 50
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer