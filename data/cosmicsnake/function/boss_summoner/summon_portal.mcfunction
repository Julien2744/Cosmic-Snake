summon minecraft:item_display ~ ~ ~ {\
    view_range:8f,\
    brightness:{block: 15, sky: 15},\
    shadow_radius:0f,\
    shadow_strength:0f,\
    width:0f,\
    height:0f,\
    Tags:[\
        "cosmicsnake.entity",\
        "cosmicsnake.immune",\
        "cosmicsnake.portal"\
    ],\
    data:{\
        snake_ID:0\
    },\
    item_display: "thirdperson_lefthand",\
    transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.65f,-28f],scale:[148f,148f,0.5f]},\
    item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:item_model":"cosmicsnake:portal"}},\
}

execute store result entity @n[type=minecraft:item_display,tag=cosmicsnake.portal,distance=..1] Rotation[0] float 1 run random value -175..175