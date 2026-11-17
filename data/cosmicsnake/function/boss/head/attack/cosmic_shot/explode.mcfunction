data modify entity @s data.dmg set compute default float cosmicsnake:attack/cosmic_shot
execute at @e[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..2.25,limit=8] \
        run function cosmicsnake:boss/head/attack/cosmic_shot/apply_damage with entity @s data

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.25 25
playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..16] ~ ~ ~ 1 1.9

execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    if score #cosmicsnake.config cosmicsnake.config.boss_drop_block matches 1 \
        unless block ~ ~ ~ #cosmicsnake:explosion_cant_break run setblock ~ ~ ~ air destroy

execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    if score #cosmicsnake.config cosmicsnake.config.boss_drop_block matches 0 \
        unless block ~ ~ ~ #cosmicsnake:explosion_cant_break run setblock ~ ~ ~ air

kill @s