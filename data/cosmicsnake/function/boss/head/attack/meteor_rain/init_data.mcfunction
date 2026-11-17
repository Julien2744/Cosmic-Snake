$data modify entity @s data.snake_ID set value $(snake_ID)

scoreboard players set @s cosmicsnake.attack_cooldown 300

execute if entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128] \
    if predicate cosmicsnake:random/25 run return run rotate @s facing entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128] feet

execute store result entity @s Rotation[0] float 1 run random value -178..178
execute store result entity @s Rotation[1] float 1 run random value 24..75