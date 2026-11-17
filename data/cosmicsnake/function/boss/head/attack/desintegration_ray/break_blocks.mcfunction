# check if there any block that shouldn't be destroyed
execute store success score #cosmicsnake.global cosmicsnake.check_blocks \
    run clone ~-3 ~ ~-3 ~3 ~5 ~3 ~-3 ~ ~-3 filtered #cosmicsnake:cant_break force

# if yes then stop and don't touch the area
execute if score #cosmicsnake.global cosmicsnake.check_blocks matches 1 \
    run return 0

# if no then destroy the area
execute if score #cosmicsnake.config cosmicsnake.config.boss_drop_block matches 1 \
    run return run fill ~-3 ~ ~-3 ~3 ~5 ~3 minecraft:air destroy

# if no then destroy the area
execute if score #cosmicsnake.config cosmicsnake.config.boss_drop_block matches 0 \
    run return run fill ~-3 ~ ~-3 ~3 ~5 ~3 minecraft:air