summon item_display ~ ~ ~ {\
    width:1f,\
    height:1f,\
    Rotation:[0F,0F],\
    Tags:[\
        "cosmicsnake.cosmic_shot",\
        "cosmicsnake.immune",\
        "cosmicsnake.new"\
    ],\
    data:{\
        snake_ID:0\
    },\
    brightness:{sky:15,block:15},\
    item:{\
        id:"minecraft:popped_chorus_fruit",\
        count:1,\
        components:{"minecraft:item_model":"cosmicsnake:cosmic_shot"}\
    }\
}

# set snake ID
$data modify entity @n[type=item_display,tag=cosmicsnake.cosmic_shot,tag=cosmicsnake.new,distance=..1] data.snake_ID set value $(snake_ID)

# set rotation
execute as @n[type=item_display,tag=cosmicsnake.cosmic_shot,tag=cosmicsnake.new,distance=..1] \
    run function cosmicsnake:boss/head/attack/cosmic_shot/random_rotate