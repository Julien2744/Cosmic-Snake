## head

# move back so that the boss doesn't get stuck while chasing the target

# check if the snake has reach the lenght limit
$execute positioned $(portal_x) $(portal_y) $(portal_z) \
    run function cosmicsnake:boss/check_distance_from_tail with storage cosmicsnake:global
execute if entity @s[tag=cosmicsnake.cant_move_back] run return 0

# make the snake move backward for 20t
scoreboard players set @s cosmicsnake.moveback_duration 35
# make moveback longer when max segment tick is low
scoreboard players operation @s cosmicsnake.moveback_duration -= #cosmicsnake.config cosmicsnake.config.max_segment_tick
# incase duration reach a value that too low
execute if score @s cosmicsnake.moveback_duration matches ..14 run scoreboard players set @s cosmicsnake.moveback_duration 14

# repetition in case the segment causing problem is far away
scoreboard players add @s cosmicsnake.moveback_repetition 2

function cosmicsnake:boss/head/move_back with entity @s data