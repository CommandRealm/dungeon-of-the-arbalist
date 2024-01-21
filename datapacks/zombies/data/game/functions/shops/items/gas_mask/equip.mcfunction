# called to equip our leather helmet

# tag
tag @s add has_gas_mask

# replacing our head
item replace entity @s armor.head with minecraft:player_head{Enchantments:[{id:"binding_curse",lvl:1}],display:{Lore:['[{"text":"Removes negative potion effects and plagues till the end of a wave.","color":"gray","italic":false}]'],Name:'[{"text":"Gas ","color":"#296116","italic":false},{"text":"Mask","color":"#214017","italic":false}]'},SkullOwner:{Id:[I;880456097,380520225,-2036981197,1646034508],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmU0ODAzNTBlNDhkMzU4MWYzYTA2NDAyMDk5NWUwYjFlMTg2MGM3ZWZkOWQxNDg4YTYzYjc3OTNlOTY1YTZlZiJ9fX0="}]}},HideFlags:255} 1

playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 1 0
playsound minecraft:entity.sniffer.death master @a ~ ~ ~ 0.75 2