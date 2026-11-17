$execute at @e[type=!#cosmicsnake:non_living,dx=0,dy=0,dz=0,nbt=!{UUID:$(owner)},limit=8] \
    run damage @n[type=!#cosmicsnake:non_living,dx=0,dy=0,dz=0,nbt=!{UUID:$(owner)}] 17.5 minecraft:player_attack by @p[nbt={UUID:$(owner)},distance=..128]

$execute if entity @s[tag=cosmicsnake.raycannon.enchant.ricochet] \
    if entity @e[type=!#cosmicsnake:non_living,dx=0,dy=0,dz=0,nbt=!{UUID:$(owner)},limit=1] \
        run function cosmicsnake:raycannon/shoot/turn