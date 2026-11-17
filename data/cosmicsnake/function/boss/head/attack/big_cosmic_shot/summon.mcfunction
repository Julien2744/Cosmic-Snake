summon item_display ~ ~ ~ {\
    Tags:[\
        "cosmicsnake.big_cosmic_shot",\
        "cosmicsnake.immune"\
    ],\
    data:{\
        snake_ID:0\
    },\
    brightness:{sky:15,block:15},\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},\
    item:{\
        id:"minecraft:popped_chorus_fruit",\
        count:1,\
        components:{"minecraft:item_model":"cosmicsnake:cosmic_shot",enchantment_glint_override:1b}\
    }\
}

# set snake ID
$data modify entity @n[type=item_display,tag=cosmicsnake.big_cosmic_shot,distance=..1] data.snake_ID set value $(snake_ID)
execute as @n[type=item_display,tag=cosmicsnake.big_cosmic_shot,distance=..1] at @s run rotate @s facing entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128] feet
data modify entity @n[type=item_display,tag=cosmicsnake.big_cosmic_shot,distance=..1] Rotation[0] set from entity @s Rotation[0]

playsound minecraft:entity.blaze.shoot hostile @a[distance=..64] ~ ~ ~ 4 2
particle minecraft:witch ~ ~ ~ 0.25 0.25 0.25 1 32