summon block_display ~ ~ ~ {\
    Glowing:0b,\
    Rotation:[0,90f],\
    view_range:3f,\
    width:4f,\
    height:4f,\
    Tags:["cosmicsnake.meteor.rock"],\
    data:{\
        snake_ID:0\
    },\
    glow_color_override:9375246,\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,0f,-2f],scale:[4f,4f,4f]},\
    block_state:{id:"minecraft:magma_block"},\
    teleport_duration:4,\
    Passengers:[\
        {\
            id:"minecraft:block_display",\
            Rotation:[0,90f],\
            view_range:3f,\
            width:4f,\
            height:4f,\
            teleport_duration:4,\
            Tags:["cosmicsnake.meteor.fire"],\
            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.15f,1f,-4.15f],scale:[4.25f,8.25f,4.25f]},\
            block_state:{id:"minecraft:fire"}\
        }\
    ]\
}

$execute as @n[type=minecraft:block_display,tag=cosmicsnake.meteor.rock,distance=..4] at @s run function cosmicsnake:boss/head/attack/meteor_rain/init_data {snake_ID:$(snake_ID)}