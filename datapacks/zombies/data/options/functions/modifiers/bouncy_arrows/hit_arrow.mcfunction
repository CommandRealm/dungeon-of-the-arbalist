execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_bouncy_arrows] run scoreboard players remove $bouncy_arrows modifiers 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_bouncy_arrows] run function options:modifiers/bouncy_arrows/add
