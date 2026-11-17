# reset to 1 if schedule count is negative
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches ..-1 run scoreboard players set #cosmicsnake.global cosmicsnake.schedule_count 1

# if it's already O don't re-clear-schedule the function
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 0 run return 0

# subtract 1 to the schedule count
scoreboard players remove #cosmicsnake.global cosmicsnake.schedule_count 1

execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 0 run schedule clear cosmicsnake:one_tick
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 0 run schedule clear cosmicsnake:four_tick
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 0 run schedule clear cosmicsnake:ten_tick
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 0 run schedule clear cosmicsnake:one_second
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 0 run schedule clear cosmicsnake:one_minute

# clear players tags just in case
tag @a[tag=cosmicsnake.target] remove cosmicsnake.target