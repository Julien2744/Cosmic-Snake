summon item_display ~ ~ ~ {\
    Glowing:0b,\
    width:1f,\
    height:1f,\
    billboard:"center",\
    Tags:[\
        "cosmicsnake.ender_mine",\
        "cosmicsnake.ender_mine.inactive"\
    ],\
    glow_color_override:6293163,\
    brightness:{sky:15,block:15},\
    item:{\
        id:"minecraft:popped_chorus_fruit",\
        count:1,\
        components:{\
            "minecraft:item_model":"cosmicsnake:ender_mine",\
            "custom_data":{cosmicsnake.ender_mine:false}\
        }\
    }\
}

data modify entity @n[type=minecraft:item_display,tag=cosmicsnake.ender_mine,distance=..1] data.snake_ID set from entity @s data.snake_ID
scoreboard players set @n[type=minecraft:item_display,tag=cosmicsnake.ender_mine,distance=..1] cosmicsnake.attack_cooldown 350