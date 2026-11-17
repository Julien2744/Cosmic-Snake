# cooldown
execute unless score @s cosmicsnake.attack_cooldown matches ..0 run scoreboard players remove @s cosmicsnake.attack_cooldown 1

#other stuff
# cosmic_shot
$execute if entity @e[type=minecraft:item_display,tag=cosmicsnake.cosmic_shot,nbt={data:{snake_ID:$(snake_ID)}},distance=..84,limit=1] \
    run function cosmicsnake:boss/head/attack/cosmic_shot/tick_shot with entity @s data

# big_cosmic_shot
$execute if entity @e[type=minecraft:item_display,tag=cosmicsnake.big_cosmic_shot,tag=cosmicsnake.big_cosmic_shot.shoot,nbt={data:{snake_ID:$(snake_ID)}},distance=..128,limit=1] \
    run function cosmicsnake:boss/head/attack/big_cosmic_shot/tick_shot with entity @s data

# ender_mines check
$execute if entity @e[type=minecraft:item_display,tag=cosmicsnake.ender_mine,tag=!cosmicsnake.ender_mine.inactive,nbt={data:{snake_ID:$(snake_ID)}},distance=..128,limit=1] \
    as @e[type=minecraft:item_display,tag=cosmicsnake.ender_mine,tag=!cosmicsnake.ender_mine.inactive,nbt={data:{snake_ID:$(snake_ID)}},distance=..128,limit=32] at @s \
        run function cosmicsnake:boss/head/attack/ender_mines/tick_at_self

#pointblank_shot
execute if entity @s[tag=cosmicsnake.pointblank_shot,tag=!cosmicsnake.pointblank_shot.mean] on vehicle run function cosmicsnake:boss/head/attack/pointblank_shot/tick_macro with entity @s data
#mean_pointblank_shot
execute if entity @s[tag=cosmicsnake.pointblank_shot,tag=cosmicsnake.pointblank_shot.mean] run function cosmicsnake:boss/head/attack/mean_pointblank_shot/tick

# tick base attack
execute if score @s cosmicsnake.attack_ID matches 0 run return 0
# ult tick
execute if score @s cosmicsnake.attack_ID matches 1 run return run function cosmicsnake:boss/head/attack/desintegration_ray/tick with entity @s data
# cosmic_shot tick
execute if score @s cosmicsnake.attack_ID matches 2 run return run function cosmicsnake:boss/head/attack/cosmic_shot/tick_anim
# big_cosmic_shot tick
execute if score @s cosmicsnake.attack_ID matches 4 if score @s cosmicsnake.attack_cooldown matches 62..120 run return run function aj:cosmicsnake_head/at_locator {name:"mouth_middle",command:"function cosmicsnake:boss/head/attack/big_cosmic_shot/tick_anim"}
# ender_mines summon 1t (there is also 4t)
execute if score @s cosmicsnake.attack_ID matches 7 if score @s cosmicsnake.attack_cooldown matches 50..70 run return run function cosmicsnake:boss/head/attack/ender_mines/choose_random