$data merge entity @s \
    {\
        data:{\
            segment_ID:$(segment_ID),\
            snake_ID:$(snake_ID),\
            speed:$(move_speed)\
        }\
    }

execute store result score @s cosmicsnake.math.memory run data get entity @s data.segment_ID
execute store result entity @s data.previous_segment_ID int 1 run scoreboard players remove @s cosmicsnake.math.memory 1

execute store result score @s cosmicsnake.math.memory run data get entity @s data.segment_ID
execute store result entity @s data.next_segment_ID int 1 run scoreboard players add @s cosmicsnake.math.memory 1

scoreboard players reset @s cosmicsnake.math.memory

# modify health
function cosmicsnake:boss/apply_hp_mul with storage cosmicsnake:global
execute store result entity @s Health float 1 run attribute @s minecraft:max_health get
execute store result score @s cosmicsnake.health run attribute @s minecraft:max_health get

function cosmicsnake:compability_tags