# check if there already a snake
execute if entity @e[type=minecraft:item_display,tag=cosmicsnake.portal,distance=..256,limit=1] run return run setblock ~ ~ ~ minecraft:air destroy
execute if entity @e[type=minecraft:marker,tag=cosmicsnake.boss_summoner.master,distance=..256,limit=1] run return run setblock ~ ~ ~ minecraft:air destroy

# if not proceed
execute align xyz run summon marker ~ ~-2 ~ {\
    Rotation:[0,0],\
    Tags:[\
        "cosmicsnake.boss_summoner.master"\
    ]\
}

execute positioned ~ ~-2 ~ as @n[type=minecraft:marker,tag=cosmicsnake.boss_summoner.master,distance=..3] at @s run function cosmicsnake:boss_summoner/anim/check_endcrystal_marker