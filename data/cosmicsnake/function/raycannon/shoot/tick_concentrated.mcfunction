scoreboard players remove @s cosmicsnake.attack_cooldown 1
execute if score @s cosmicsnake.attack_cooldown matches ..0 run return run kill @s

tp ^ ^ ^1.5
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1 normal

execute unless block ~ ~ ~ #minecraft:replaceable run return run function cosmicsnake:raycannon/shoot/concentrated_explode with entity @s data

$execute align xyz if entity @n[type=!#cosmicsnake:non_living,dx=0,dy=0,dz=0,nbt=!{UUID:$(owner)}] run return run function cosmicsnake:raycannon/shoot/concentrated_explode with entity @s data