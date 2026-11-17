summon minecraft:item_display ~ ~ ~ {\
    brightness:{block:15,sky:15},\
    item:{\
        components:{"minecraft:item_model":"cosmicsnake:desintegration_ray",enchantment_glint_override:1b},\
        count:1,\
        id:"minecraft:popped_chorus_fruit"\
    },\
    Tags:[\
        "cosmicsnake.desintegration_ray",\
        "cosmicsnake.immune",\
        "cosmicsnake.no_neighbord"\
    ],\
    data:{\
        snake_ID:0\
    },\
    transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[6.0f,6.0f,6.0f],translation:[0.0f,0.0f,0.0f]},\
    view_range:2.0f\
}

$data modify entity @n[type=minecraft:item_display,tag=cosmicsnake.desintegration_ray,tag=cosmicsnake.no_neighbord,nbt={data:{snake_ID:0}},distance=..2] data.snake_ID set value $(snake_ID)
$data modify entity @n[type=minecraft:item_display,tag=cosmicsnake.desintegration_ray,tag=cosmicsnake.no_neighbord,nbt={data:{snake_ID:$(snake_ID)}},distance=..2] Rotation set from entity @s Rotation

execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 positioned ~ ~-2 ~ run function cosmicsnake:boss/head/attack/desintegration_ray/break_blocks