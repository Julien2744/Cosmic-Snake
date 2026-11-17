function aj:cosmicsnake_head/at_locator {\
    name:"mouth_middle",\
    command:"execute on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] run function cosmicsnake:boss/head/attack/bite/attack"\
}