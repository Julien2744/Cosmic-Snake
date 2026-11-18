function cosmicsnake:remove_schedule
execute as @e[type=minecraft:end_crystal,distance=..5,limit=4,sort=nearest] run data remove entity @s beam_target
kill @s