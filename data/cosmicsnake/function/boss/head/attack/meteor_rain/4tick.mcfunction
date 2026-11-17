# for some reason this will not run in init_data
execute if score @s cosmicsnake.attack_cooldown matches 300 on passengers run rotate @s facing ^ ^-4 ^

# if too far
execute if predicate cosmicsnake:out_of_bound run return run function cosmicsnake:boss/head/attack/meteor_rain/kill
execute unless loaded ^ ^ ^4 run return run function cosmicsnake:boss/head/attack/meteor_rain/kill

scoreboard players remove @s cosmicsnake.attack_cooldown 1
execute if score @s cosmicsnake.attack_cooldown matches ..0 run return run function cosmicsnake:boss/head/attack/meteor_rain/explode with entity @s data

execute unless block ~ ~ ~ #minecraft:replaceable run return run function cosmicsnake:boss/head/attack/meteor_rain/explode with entity @s data
tp @s ^ ^ ^2.5