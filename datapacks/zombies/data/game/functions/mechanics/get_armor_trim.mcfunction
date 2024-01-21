# called to give us an armor trim


item replace entity @s armor.chest from block 0 1 0 container.0





# copper
execute if score @s cosmetics_trim_type matches 0 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:copper"
execute if score @s cosmetics_trim_type matches 0 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:copper"
execute if score @s cosmetics_trim_type matches 0 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:copper"

# iron
execute if score @s cosmetics_trim_type matches 1 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:iron"
execute if score @s cosmetics_trim_type matches 1 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:iron"
execute if score @s cosmetics_trim_type matches 1 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:iron"

# gold
execute if score @s cosmetics_trim_type matches 2 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:gold"
execute if score @s cosmetics_trim_type matches 2 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:gold"
execute if score @s cosmetics_trim_type matches 2 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:gold"

# quartz
execute if score @s cosmetics_trim_type matches 3 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:quartz"
execute if score @s cosmetics_trim_type matches 3 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:quartz"
execute if score @s cosmetics_trim_type matches 3 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:quartz"

# redstone
execute if score @s cosmetics_trim_type matches 4 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:redstone"
execute if score @s cosmetics_trim_type matches 4 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:redstone"
execute if score @s cosmetics_trim_type matches 4 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:redstone"

# lapis
execute if score @s cosmetics_trim_type matches 5 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:lapis"
execute if score @s cosmetics_trim_type matches 5 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:lapis"
execute if score @s cosmetics_trim_type matches 5 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:lapis"

# emerald
execute if score @s cosmetics_trim_type matches 6 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:emerald"
execute if score @s cosmetics_trim_type matches 6 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:emerald"
execute if score @s cosmetics_trim_type matches 6 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:emerald"

# amethyst
execute if score @s cosmetics_trim_type matches 7 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:amethyst"
execute if score @s cosmetics_trim_type matches 7 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:amethyst"
execute if score @s cosmetics_trim_type matches 7 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:amethyst"

# diamond
execute if score @s cosmetics_trim_type matches 8 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:diamond"
execute if score @s cosmetics_trim_type matches 8 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:diamond"
execute if score @s cosmetics_trim_type matches 8 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:diamond"

# netherite
execute if score @s cosmetics_trim_type matches 9 run data modify block 0 1 0 Items[0].tag.Trim.material set value "minecraft:netherite"
execute if score @s cosmetics_trim_type matches 9 run data modify block 0 1 0 Items[1].tag.Trim.material set value "minecraft:netherite"
execute if score @s cosmetics_trim_type matches 9 run data modify block 0 1 0 Items[2].tag.Trim.material set value "minecraft:netherite"

# patterns
execute if score @s cosmetics_trim matches 1 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:host"
execute if score @s cosmetics_trim matches 1 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:host"
execute if score @s cosmetics_trim matches 1 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:host"

execute if score @s cosmetics_trim matches 2 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:tide"
execute if score @s cosmetics_trim matches 2 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:tide"
execute if score @s cosmetics_trim matches 2 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:tide"

execute if score @s cosmetics_trim matches 3 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:snout"
execute if score @s cosmetics_trim matches 3 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:snout"
execute if score @s cosmetics_trim matches 3 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:snout"

execute if score @s cosmetics_trim matches 4 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:sentry"
execute if score @s cosmetics_trim matches 4 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:sentry"
execute if score @s cosmetics_trim matches 4 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:sentry"

execute if score @s cosmetics_trim matches 5 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:eye"
execute if score @s cosmetics_trim matches 5 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:eye"
execute if score @s cosmetics_trim matches 5 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:eye"

execute if score @s cosmetics_trim matches 6 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:vex"
execute if score @s cosmetics_trim matches 6 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:vex"
execute if score @s cosmetics_trim matches 6 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:vex"

execute if score @s cosmetics_trim matches 7 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:ward"
execute if score @s cosmetics_trim matches 7 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:ward"
execute if score @s cosmetics_trim matches 7 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:ward"

execute if score @s cosmetics_trim matches 8 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:dune"
execute if score @s cosmetics_trim matches 8 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:dune"
execute if score @s cosmetics_trim matches 8 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:dune"

execute if score @s cosmetics_trim matches 9 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:silence"
execute if score @s cosmetics_trim matches 9 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:silence"
execute if score @s cosmetics_trim matches 9 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:silence"

execute if score @s cosmetics_trim matches 10 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:rib"
execute if score @s cosmetics_trim matches 10 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:rib"
execute if score @s cosmetics_trim matches 10 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:rib"

execute if score @s cosmetics_trim matches 11 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:coast"
execute if score @s cosmetics_trim matches 11 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:coast"
execute if score @s cosmetics_trim matches 11 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:coast"

execute if score @s cosmetics_trim matches 12 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:raiser"
execute if score @s cosmetics_trim matches 12 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:raiser"
execute if score @s cosmetics_trim matches 12 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:raiser"

execute if score @s cosmetics_trim matches 13 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:spire"
execute if score @s cosmetics_trim matches 13 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:spire"
execute if score @s cosmetics_trim matches 13 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:spire"

execute if score @s cosmetics_trim matches 14 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:wild"
execute if score @s cosmetics_trim matches 14 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:wild"
execute if score @s cosmetics_trim matches 14 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:wild"

execute if score @s cosmetics_trim matches 15 run data modify block 0 1 0 Items[0].tag.Trim.pattern set value "minecraft:wayfinder"
execute if score @s cosmetics_trim matches 15 run data modify block 0 1 0 Items[1].tag.Trim.pattern set value "minecraft:wayfinder"
execute if score @s cosmetics_trim matches 15 run data modify block 0 1 0 Items[2].tag.Trim.pattern set value "minecraft:wayfinder"