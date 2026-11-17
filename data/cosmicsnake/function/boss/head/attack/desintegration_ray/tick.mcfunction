# post effect
execute if score @s cosmicsnake.attack_cooldown matches 280 run posteffect remove @a[distance=..256,scores={cosmicsnake.config.disable_posteffect=0}] cosmicsnake:high_contrast

# stop
execute if score @s cosmicsnake.attack_cooldown matches 80 run return run function cosmicsnake:boss/head/attack/desintegration_ray/end with entity @s data
execute if score @s cosmicsnake.attack_cooldown matches 0 run scoreboard players set @s cosmicsnake.attack_ID 0
execute if score @s cosmicsnake.attack_cooldown matches 0 run return run scoreboard players set @s cosmicsnake.can_move 1

# step
$execute at @n[type=minecraft:item_display,tag=cosmicsnake.desintegration_ray,tag=cosmicsnake.no_neighbord,nbt={data:{snake_ID:$(snake_ID)}},distance=..128] \
    run function cosmicsnake:boss/head/attack/desintegration_ray/step

# damage
$execute if score @s cosmicsnake.attack_cooldown matches 20.. \
    at @a[gamemode=!creative,gamemode=!spectator,tag=!cosmicsnake.immune,nbt={HurtTime:0s,DeathTime:0s},distance=..138] run execute if entity @n[type=minecraft:item_display,tag=cosmicsnake.desintegration_ray,nbt={data:{snake_ID:$(snake_ID)}},distance=..4] \
        run function cosmicsnake:boss/head/attack/desintegration_ray/damage_calc with entity @s data
$execute if score @s cosmicsnake.attack_cooldown matches 20.. \
    at @e[type=!#cosmicsnake:non_living,type=!minecraft:player,tag=!cosmicsnake.immune,nbt={HurtTime:0s,DeathTime:0s},distance=..138] run execute if entity @n[type=minecraft:item_display,tag=cosmicsnake.desintegration_ray,nbt={data:{snake_ID:$(snake_ID)}},distance=..4] \
        run function cosmicsnake:boss/head/attack/desintegration_ray/damage_calc with entity @s data