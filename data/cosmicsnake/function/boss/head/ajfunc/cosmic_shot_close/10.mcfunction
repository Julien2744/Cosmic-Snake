execute if score @s cosmicsnake.energy matches ..1249 run return run function cosmicsnake:boss/head/attack/execute {ID:0,duration:100}

execute positioned ~ ~-5 ~ run rotate @s facing entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128]

execute if score @s cosmicsnake.energy matches 120.. \
    if score @s cosmicsnake.health_pour matches 51.. \
    if predicate cosmicsnake:random/25 \
        run return run function cosmicsnake:boss/head/attack/execute {ID:4,duration:140}
execute if score @s cosmicsnake.health_pour matches 1..50 \
    unless predicate cosmicsnake:random/35 \
        run return run function cosmicsnake:boss/head/attack/execute {ID:4,duration:140}

execute if score @s cosmicsnake.energy matches 1250.. run return run function cosmicsnake:boss/head/attack/execute {ID:0,duration:60}