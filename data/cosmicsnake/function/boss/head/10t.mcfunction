# stop the snake
execute if entity @s[tag=cosmicsnake.boss_summoner.stop] run return 0
execute if score @s cosmicsnake.stop matches 1 run return 0

# bossbar
execute store result score @s cosmicsnake.health on vehicle run data get entity @s Health
execute on vehicle store result score @s cosmicsnake.health run data get entity @s Health
execute if score #cosmicsnake.config cosmicsnake.config.bossbar matches 1 on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] \
    run bossbar set cosmicsnake:cosmicsnake_bossbar name [{"selector":"@s"},{"color":"dark_gray",shadow_color:0,"text":" - "},{"bold":true,"color":"dark_red",shadow_color:0,"score":{"name":"@s","objective":"cosmicsnake.health"}},{"bold":false,"color":"#8308E4",shadow_color:-16777215,"text":"❤"}]
execute if score #cosmicsnake.config cosmicsnake.config.bossbar matches 1 \
    store result bossbar cosmicsnake:cosmicsnake_bossbar value run scoreboard players get @s cosmicsnake.health

# health%
execute store result score @s cosmicsnake.health_pour run compute default integer cosmicsnake:calculate_health_pourcentage

# energy_repetion decrease
execute unless score @s cosmicsnake.energy_repetition matches ..1 \
    run scoreboard players remove @s cosmicsnake.energy_repetition 1