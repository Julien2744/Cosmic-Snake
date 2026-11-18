# somehow I can't put the end podium in the death/end because WHY WOULD IT WORK I GUESS ??
execute if entity @s[tag=cosmicsnake.boss_summoner.responsible] if dimension minecraft:the_end \
    positioned 0 0 0 positioned over motion_blocking_no_leaves positioned ~ ~-4 ~ \
        run place feature minecraft:end_podium_active

# loot
execute store result score #cosmicsnake.global cosmicsnake.gamerule.mob_drops run gamerule mob_drops
execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_drops matches 1 \
    positioned ~ ~2 ~ run function cosmicsnake:boss/head/death/loot