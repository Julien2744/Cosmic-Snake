summon item_display ~ ~ ~ {\
    width:1f,\
    height:1f,\
    Rotation:[0F,0F],\
    Tags:[\
        "cosmicsnake.raycannon.shot"\
    ],\
    data:{\
        owner:[0,0,0,0]\
    },\
    brightness:{sky:15,block:15},\
    item:{\
        id:"minecraft:popped_chorus_fruit",\
        count:1,\
        components:{"minecraft:item_model":"cosmicsnake:cosmic_shot"}\
    }\
}

# set owner
$data modify entity @n[type=item_display,tag=cosmicsnake.raycannon.shot,distance=..1] data.owner set value $(owner)
# set rotation
data modify entity @n[type=item_display,tag=cosmicsnake.raycannon.shot,distance=..1] Rotation set from entity @s Rotation
# set duration
scoreboard players set @n[type=item_display,tag=cosmicsnake.raycannon.shot,distance=..1] cosmicsnake.attack_cooldown 200

scoreboard players set @s cosmicsnake.attack_cooldown 10
tag @s remove cosmicsnake.raycannon.enchant.concentrated