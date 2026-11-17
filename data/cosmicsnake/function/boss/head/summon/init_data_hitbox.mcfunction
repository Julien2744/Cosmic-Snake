$data merge entity @s \
    {\
        data:{\
            snake_ID:$(snake_ID),\
            segment_count:1,\
            speed:$(move_speed)\
        }\
    }

# set portal pos data
execute positioned ~ ~4 ~ store result entity @s data.portal_x float 1 run data get entity @n[type=item_display,tag=cosmicsnake.portal,distance=..4] Pos[0]
execute positioned ~ ~4 ~ store result entity @s data.portal_y float 1 run data get entity @n[type=item_display,tag=cosmicsnake.portal,distance=..4] Pos[1]
execute positioned ~ ~4 ~ store result entity @s data.portal_z float 1 run data get entity @n[type=item_display,tag=cosmicsnake.portal,distance=..4] Pos[2]

# modify health
function cosmicsnake:boss/apply_hp_mul with storage cosmicsnake:global
execute store result entity @s Health float 1 run attribute @s minecraft:max_health get

# hitbox scorebard
scoreboard players set @s cosmicsnake.moveback_count 0
scoreboard players set @s cosmicsnake.moveback_duration 0
scoreboard players set @s cosmicsnake.moveback_repetition 0
scoreboard players set @s cosmicsnake.segment_count 1
scoreboard players operation @s cosmicsnake.config.max_segment_tick = #cosmicsnake.config cosmicsnake.config.max_segment_tick

function cosmicsnake:compability_tags