execute if score @s cosmicsnake.attack_cooldown matches 118 run return run \
    data merge entity @n[type=item_display,tag=cosmicsnake.big_cosmic_shot,distance=..8] {start_interpolation:-1,interpolation_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s cosmicsnake.attack_cooldown matches 117 run return run \
    data merge entity @n[type=item_display,tag=cosmicsnake.big_cosmic_shot,distance=..8] {start_interpolation:-1,interpolation_duration:60,transformation:{left_rotation:[0.0f,0.0f,0.99f,0.0f],scale:[5.0f,5.0f,5.0f]}}

execute if score @s cosmicsnake.attack_cooldown matches 64..116 \
    positioned ~ ~-2 ~ facing entity @n[tag=cosmicsnake.target,distance=..64] feet run rotate @s ~ ~
execute if score @s cosmicsnake.attack_cooldown matches 64..116 \
    run tp @n[type=item_display,tag=cosmicsnake.big_cosmic_shot,distance=..8] ^ ^ ^1 facing entity @n[tag=cosmicsnake.target,distance=..64] feet

execute if score @s cosmicsnake.attack_cooldown matches 62 run return run function cosmicsnake:boss/head/attack/big_cosmic_shot/shot

particle minecraft:portal ~ ~ ~ 0 0 0 5 5