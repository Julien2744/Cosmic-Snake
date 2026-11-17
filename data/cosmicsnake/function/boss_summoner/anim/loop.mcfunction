# increment every 4t

# if beacon was removed
execute if score @s cosmicsnake.attack_cooldown matches ..39 \
    unless block ~ ~ ~ #cosmicsnake:beacon_call run return run function cosmicsnake:boss_summoner/anim/loop_run/break

# increment
scoreboard players add @s cosmicsnake.attack_cooldown 1

# almost always active
execute if score @s cosmicsnake.attack_cooldown matches 40..90 run particle minecraft:end_rod ~ ~40 ~ 0 20 0 0 32 force
execute if score @s cosmicsnake.attack_cooldown matches 40..90 run particle minecraft:enchant ~ ~1 ~ 0 0 0 1 10
execute if score @s cosmicsnake.attack_cooldown matches 40..90 as @e[type=minecraft:text_display,tag=cosmicsnake.boss_summoner.text,distance=..1,limit=5,sort=nearest] rotated as @s run rotate @s ~2 0
execute if score @s cosmicsnake.attack_cooldown matches 145..180 run particle minecraft:trial_spawner_detection ~ ~40 ~ 0 20 0 0 32 force

# special stuff at moment
execute if score @s cosmicsnake.attack_cooldown matches 1 run return run function cosmicsnake:boss_summoner/anim/loop_run/0

execute if score @s cosmicsnake.attack_cooldown matches 25 run return run particle minecraft:portal ~ ~ ~ 0 0 0 1 32

execute if score @s cosmicsnake.attack_cooldown matches 40 run return run function cosmicsnake:boss_summoner/anim/loop_run/40

execute if score @s cosmicsnake.attack_cooldown matches 90 run function cosmicsnake:boss_summoner/anim/loop_run/55
execute if score @s cosmicsnake.attack_cooldown matches 90 as @e[type=minecraft:text_display,tag=cosmicsnake.boss_summoner.text,distance=..1,limit=5,sort=nearest] run data modify entity @s text.color set value "#d095ff"

execute if score @s cosmicsnake.attack_cooldown matches 110 run function cosmicsnake:boss_summoner/anim/loop_run/55
execute if score @s cosmicsnake.attack_cooldown matches 110 as @e[type=minecraft:text_display,tag=cosmicsnake.boss_summoner.text,distance=..1,limit=5,sort=nearest] run data modify entity @s text.color set value "#a94ef1"

execute if score @s cosmicsnake.attack_cooldown matches 125 run function cosmicsnake:boss_summoner/anim/loop_run/55
execute if score @s cosmicsnake.attack_cooldown matches 125 as @e[type=minecraft:text_display,tag=cosmicsnake.boss_summoner.text,distance=..1,limit=5,sort=nearest] run data modify entity @s text.color set value "#952de0"

execute if score @s cosmicsnake.attack_cooldown matches 145 run return run function cosmicsnake:boss_summoner/anim/loop_run/145

execute if score @s cosmicsnake.attack_cooldown matches 160 run return run function cosmicsnake:boss_summoner/anim/loop_run/160

execute if score @s cosmicsnake.attack_cooldown matches 180 run return run function cosmicsnake:boss_summoner/anim/loop_run/180

execute if score @s cosmicsnake.attack_cooldown matches 230 positioned ~ ~32 ~ run return run function cosmicsnake:boss/head/sound/roar

execute if score @s cosmicsnake.attack_cooldown matches 255 positioned ~ ~32 ~ run return run function cosmicsnake:boss/head/sound/charge

execute if score @s cosmicsnake.attack_cooldown matches 274 positioned ~ ~64 ~ run return run function cosmicsnake:boss_summoner/desintegration_ray/begin

execute if score @s cosmicsnake.attack_cooldown matches 276 run return run function cosmicsnake:boss_summoner/anim/loop_run/276

execute if score @s cosmicsnake.attack_cooldown matches 330 run return run function cosmicsnake:boss_summoner/anim/loop_run/330