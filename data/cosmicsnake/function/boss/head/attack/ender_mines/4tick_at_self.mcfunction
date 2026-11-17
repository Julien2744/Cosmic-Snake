execute if score @s cosmicsnake.attack_cooldown matches ..0 run return run kill @s

# inactive
execute if score @s cosmicsnake.attack_cooldown matches 300.. run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0 4 normal

execute if score @s cosmicsnake.attack_cooldown matches ..300 run return run function cosmicsnake:boss/head/attack/ender_mines/activate