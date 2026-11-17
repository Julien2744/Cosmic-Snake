# item dislay

$data merge entity @s \
    {\
        data:{\
            snake_ID:$(snake_ID),\
            segment_count:1\
        }\
    }

# scoreboar
scoreboard players set @s cosmicsnake.stop 1
scoreboard players set @s cosmicsnake.can_move 0
scoreboard players set @s cosmicsnake.can_attack 0
scoreboard players set @s cosmicsnake.energy 0
scoreboard players set @s cosmicsnake.energy_repetition 1
scoreboard players set @s cosmicsnake.health_pour 100
scoreboard players set @s cosmicsnake.attack_ID 0
scoreboard players set @s cosmicsnake.attack_cooldown 20

# hibox init
$execute on vehicle at @s run function cosmicsnake:boss/head/summon/init_data_hitbox {snake_ID:$(snake_ID),move_speed:$(move_speed)}

# get data after hitbox init
execute store result score @s cosmicsnake.health on vehicle run attribute @s minecraft:max_health get

# set global score max hp
execute store result score #cosmicsnake.global cosmicsnake.boss_max_health on vehicle run attribute @s minecraft:max_health get