# positioned ~ ~2 ~ is because the marker need to be 1 block lower so the end crysral point to beam correctly

# get the number of end crystals
execute positioned ~0.5 ~2 ~0.5 store result score @s cosmicsnake.math.memory run execute if entity @e[type=minecraft:end_crystal,distance=..5]

# if 4 or more procced
execute if score @s cosmicsnake.math.memory matches ..3 run return run function cosmicsnake:boss_summoner/anim/check_endcrysral_fail

# beam
execute positioned ~ ~2 ~ at @e[type=minecraft:end_crystal,distance=..5,limit=4,sort=nearest] \
    run data modify entity @n[type=minecraft:end_crystal,distance=..1] beam_target set from entity @s Pos

tp @s ~0.5 ~2 ~0.5

tag @s add cosmicsnake.boss_summoner.loop
scoreboard players set @s cosmicsnake.attack_cooldown 0
function cosmicsnake:create_schedule