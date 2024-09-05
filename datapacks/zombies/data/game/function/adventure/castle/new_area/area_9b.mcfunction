##Called when area_9b is opened


summon minecraft:item 5137 89 15 {Tags:["die_between_games","blue_key","key"],Item:{id:"minecraft:tripwire_hook",components:{"minecraft:enchantments":{levels:{"minecraft:aqua_affinity":1}}},count:1},Glowing:1b,Age:-32162,PickupDelay:1000000}
team join blue @e[type=minecraft:item,tag=blue_key]

return 1