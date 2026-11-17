# choose attack
execute if score @s cosmicsnake.attack_cooldown matches 0 \
    if entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128,limit=1] \
        run function aj:cosmicsnake_head/at_locator {name:"mouth_middle",command:"function cosmicsnake:boss/head/attack/choose"} 

# ender_mines check
$execute if entity @e[type=minecraft:item_display,tag=cosmicsnake.ender_mine,nbt={data:{snake_ID:$(snake_ID)}},distance=..128,limit=1] \
    run function cosmicsnake:boss/head/attack/ender_mines/4tick with entity @s data

# servents particle
$execute as @e[type=minecraft:vex,tag=cosmicsnake.servent,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=64] at @s \
    run function cosmicsnake:boss/head/attack/servents/4t_atself

# cosmic_shot tick
execute if score @s cosmicsnake.attack_ID matches 2 if score @s cosmicsnake.attack_cooldown matches 16..150 run function aj:cosmicsnake_head/at_locator {name:"mouth_middle",command:"function cosmicsnake:boss/head/attack/cosmic_shot/at_locator_summon"}

# ender_mines summon 4t (there is also 4t)
execute if score @s cosmicsnake.attack_ID matches 7 if score @s cosmicsnake.attack_cooldown matches 50..70 run return run function cosmicsnake:boss/head/attack/ender_mines/choose_random