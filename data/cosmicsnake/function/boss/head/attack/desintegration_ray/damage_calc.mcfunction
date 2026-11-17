execute store result score @s cosmicsnake.damage run attribute @n[type=!#cosmicsnake:non_living,distance=..0.5] minecraft:max_health get 0.25
execute store result entity @s data.damage float 1 run compute default float cosmicsnake:attack/desintegration_ray
function cosmicsnake:boss/head/attack/desintegration_ray/apply_damage with entity @s data