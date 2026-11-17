$execute positioned ~$(random_x) ~$(random_y) ~$(random_z) run function cosmicsnake:boss/segment/summon/entity {segID:$(segment_count),snakeID:$(snake_ID),move_speed:$(speed)}

# increment value
scoreboard players add @s cosmicsnake.segment_count 1
execute store result entity @s data.segment_count int 1 run scoreboard players get @s cosmicsnake.segment_count

# unfreeze the boss
execute if score @s cosmicsnake.segment_count = #cosmicsnake.config cosmicsnake.config.segment_count \
    run function cosmicsnake:boss/head/summon/create_segment_end