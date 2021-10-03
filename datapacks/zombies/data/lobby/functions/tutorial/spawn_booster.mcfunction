##Called to spawn in a booster
summon item 11 83 -59 {Tags:["dont_die_in_tutorial"],PickupDelay:30s,Motion:[0.0d,0.15d,0.0d],Item:{id:"minecraft:light_blue_dye",Count:1b,tag:{shop_item:1b,stat_boost:1b,display:{Name:'[{"text":"Speed","color":"#3eefff","italic":false},{"text":" Booster","color":"gray"}]',Lore:['[{"text":"Obtain to increase your speed booster.","color":"gray","italic":false}]','[{"text":"Increases movement speed.","color":"gray","italic":false}]']},needs_initialization:1b}}}
playsound minecraft:entity.item.pickup master @a 11 83 -59 1 0.9
