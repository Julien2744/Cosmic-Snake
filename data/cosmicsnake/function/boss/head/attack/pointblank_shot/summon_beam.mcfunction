summon end_crystal ~ ~ ~ {\
    HasVisualFire:0b,\
    NoGravity:1b,\
    Silent:1b,\
    Invulnerable:1b,\
    Glowing:0b,\
    ShowBottom:0b,\
    Tags:[\
        "cosmicsnake.pointblank_shot.crystal",\
        "cosmicsnake.immune"\
    ],\
    beam_target:[I;0,0,0]\
}

scoreboard players set @n[type=minecraft:end_crystal,tag=cosmicsnake.pointblank_shot.crystal,distance=..1] cosmicsnake.attack_cooldown 200

data modify entity @n[type=minecraft:end_crystal,tag=cosmicsnake.pointblank_shot.crystal,distance=..1] data.snake_ID set from entity @s data.snake_ID

execute at @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..256] \
    positioned ~ ~-2 ~ \
    unless entity @n[type=minecraft:marker,tag=cosmicsnake.pointblank_shot.marker] \
        run summon minecraft:marker ~ ~-2 ~ {Tags:["cosmicsnake.pointblank_shot.marker"]}