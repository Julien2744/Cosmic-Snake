# reset to 0 if schedule count is negative
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches ..-1 run scoreboard players set #cosmicsnake.global cosmicsnake.schedule_count 0

# add 1 to the schedule count
scoreboard players add #cosmicsnake.global cosmicsnake.schedule_count 1

# if it's already 1 don't re-schedule the function
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 2.. run return 0

execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 1 run schedule function cosmicsnake:one_tick 1t
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 1 run schedule function cosmicsnake:four_tick 4t
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 1 run schedule function cosmicsnake:ten_tick 10t
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 1 run schedule function cosmicsnake:one_second 1s
execute if score #cosmicsnake.global cosmicsnake.schedule_count matches 1 run schedule function cosmicsnake:one_minute 180s