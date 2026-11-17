$data merge entity @s \
    {\
        data:{\
            segment_ID:$(segment_ID),\
            snake_ID:$(snake_ID)\
        }\
    }

# hitbox init
$execute on vehicle at @s run function cosmicsnake:boss/segment/summon/init_data_hitbox {segment_ID:$(segment_ID),snake_ID:$(snake_ID),move_speed:$(move_speed)}

# keep at end
# remove "cosmicsnake.new" tag
tag @s remove cosmicsnake.new