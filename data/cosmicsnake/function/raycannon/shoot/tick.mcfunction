scoreboard players remove @s cosmicsnake.attack_cooldown 1
execute if score @s cosmicsnake.attack_cooldown matches ..0 run return run function cosmicsnake:raycannon/shoot/end with entity @s data

execute if entity @s[tag=cosmicsnake.raycannon.enchant.none] run return run function cosmicsnake:raycannon/shoot/normal with entity @s data

execute if entity @s[tag=cosmicsnake.raycannon.enchant.ricochet] run return run function cosmicsnake:raycannon/shoot/ricochet with entity @s data

execute if entity @s[tag=cosmicsnake.raycannon.enchant.concentrated] run return run function cosmicsnake:raycannon/shoot/concentrated with entity @s data