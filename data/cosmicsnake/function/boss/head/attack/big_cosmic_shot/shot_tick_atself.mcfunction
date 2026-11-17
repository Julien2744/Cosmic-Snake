particle minecraft:dragon_breath ~ ~ ~ 0.25 0.25 0.25 0 5
execute unless block ~ ~ ~ #minecraft:replaceable run return run function cosmicsnake:boss/head/attack/big_cosmic_shot/explode with entity @s data
execute if entity @n[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..3] run return run function cosmicsnake:boss/head/attack/big_cosmic_shot/explode with entity @s data
tp @s ^ ^ ^2.25