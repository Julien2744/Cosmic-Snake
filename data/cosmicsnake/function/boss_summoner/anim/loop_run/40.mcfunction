summon block_display ~ ~ ~ {\
    Glowing:1b,\
    Tags:["cosmicsnake.fake_beacon"],\
    brightness:{sky:15,block:15},\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},\
    block_state:{id:"minecraft:beacon"}\
}

setblock ~ ~ ~ air
particle minecraft:reverse_portal ~ ~0.3 ~ 0 0 0 3 50
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 64 0.5
advancement grant @a[distance=..32] only cosmicsnake:calling_an_end

effect give @a[distance=..64] minecraft:regeneration 10 1 false
effect give @a[distance=..64] minecraft:strength 10 1 false
effect give @a[distance=..64] minecraft:resistance 10 1 false
effect give @a[distance=..64] minecraft:haste 10 2 false
effect give @a[distance=..64] minecraft:speed 10 2 false
effect give @a[distance=..64] minecraft:jump_boost 10 2 false

summon minecraft:text_display ~ ~0.3 ~ {\
    alignment:"center",\
    background:0,\
    default_background:0b,\
    line_width:200,\
    see_through:1b,\
    shadow:0b,\
    text:{font:"minecraft:alt",text:"s"},\
    Tags:["cosmicsnake.boss_summoner.text"],\
    teleport_duration:10,\
    text_opacity:255,\
    transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2,2,2],translation:[0.0f,0.0f,-1.0f]},\
    Passengers:[\
        {\
            alignment:"center",\
            background:0,\
            default_background:0b,\
            id:"minecraft:text_display",\
            line_width:200,\
            see_through:1b,\
            shadow:0b,\
            text:{font:"minecraft:alt",text:"n"},\
            Tags:["cosmicsnake.boss_summoner.text"],\
            teleport_duration:10,\
            text_opacity:255,\
            transformation:{left_rotation:[0.0f,0.8433915f,0.0f,-0.5372996f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2,2,2],translation:[-0.90630776f,0.0f,-0.42261836f]}\
        },\
        {\
            alignment:"center",\
            background:0,\
            default_background:0b,\
            id:"minecraft:text_display",\
            line_width:200,\
            see_through:1b,\
            shadow:0b,\
            text:{font:"minecraft:alt",text:"a"},\
            Tags:["cosmicsnake.boss_summoner.text"],\
            teleport_duration:10,\
            text_opacity:255,\
            transformation:{left_rotation:[0.0f,-0.34202015f,0.0f,0.9396926f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2,2,2],translation:[-0.6427878f,0.0f,0.76604474f]}\
        },\
        {\
            alignment:"center",\
            background:0,\
            default_background:0b,\
            id:"minecraft:text_display",\
            line_width:200,\
            see_through:1b,\
            shadow:0b,\
            text:{font:"minecraft:alt",text:"k"},\
            Tags:["cosmicsnake.boss_summoner.text"],\
            teleport_duration:10,\
            text_opacity:255,\
            transformation:{left_rotation:[0.0f,0.34202015f,0.0f,0.93969274f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2,2,2],translation:[0.6427878f,0.0f,0.76604474f]}\
        },\
        {\
            alignment:"center",\
            background:0,\
            default_background:0b,\
            id:"minecraft:text_display",\
            line_width:200,\
            see_through:1b,\
            shadow:0b,\
            text:{font:"minecraft:alt",text:"e"},\
            Tags:["cosmicsnake.boss_summoner.text"],\
            teleport_duration:10,\
            text_opacity:255,\
            transformation:{left_rotation:[0.0f,0.84339154f,0.0f,0.53729963f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2,2,2],translation:[0.9063078f,0.0f,-0.42261857f]}\
        }\
    ]\
}