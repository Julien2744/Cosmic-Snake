particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1
execute unless block ~ ~ ~ #minecraft:replaceable run return run function cosmicsnake:boss/head/attack/cosmic_shot/explode with entity @s data
execute if entity @n[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..1.75] run return run function cosmicsnake:boss/head/attack/cosmic_shot/explode with entity @s data
tp @s ^ ^ ^1.5