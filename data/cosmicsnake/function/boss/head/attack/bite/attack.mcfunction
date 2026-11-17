data modify entity @s data.dmg set compute default float cosmicsnake:attack/cosmicsnake_bite

execute if entity @e[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..3.5,limit=1] \
    at @e[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..3.5,limit=8] \
        run function cosmicsnake:boss/head/attack/bite/apply_damage with entity @s data

function cosmicsnake:boss/head/sound/bite