# check if there any block that shouldn't be destroyed
execute store success score #cosmicsnake.global cosmicsnake.check_blocks \
    run clone ~-2 ~ ~-2 ~2 ~4 ~2 ~-2 ~ ~-2 filtered #cosmicsnake:cant_break force

# if yes then stop and don't touch the area
execute if score #cosmicsnake.global cosmicsnake.check_blocks matches 1 \
    run return 0

# if no then destroy the area
#drop block
execute if score #cosmicsnake.config cosmicsnake.config.boss_drop_block matches 1 \
    run return run fill ~-2 ~ ~-2 ~2 ~4 ~2 minecraft:air destroy

#do not drop block
execute if score #cosmicsnake.config cosmicsnake.config.boss_drop_block matches 0 \
    run return run fill ~-2 ~ ~-2 ~2 ~4 ~2 minecraft:air