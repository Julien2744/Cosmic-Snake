# active
execute positioned ~-1 ~-1 ~-1 if entity @n[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,dx=1,dy=1,dz=1] \
    run function cosmicsnake:boss/head/attack/cosmic_shot/explode