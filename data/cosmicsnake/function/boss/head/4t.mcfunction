# death animation
execute if entity @s[tag=cosmicsnake.defeated] on vehicle at @s run function cosmicsnake:boss/head/death/step with entity @s data
# create segment
execute unless entity @s[tag=cosmicsnake.defeated] on vehicle at @s \
    if score @s cosmicsnake.segment_count < #cosmicsnake.config cosmicsnake.config.segment_count \
    run return run function cosmicsnake:boss/head/summon/create_segment

# stop the snake
execute if entity @s[tag=cosmicsnake.boss_summoner.stop] run return 0
execute if score @s cosmicsnake.stop matches 1 run return 0

# energy show
execute if entity @s[tag=cosmicsnake.show_energy] run function cosmicsnake:boss/head/show_energy with entity @s data

# cosmic_shot tick
execute if score @s cosmicsnake.can_attack matches 1 run function cosmicsnake:boss/head/attack/4t with entity @s data