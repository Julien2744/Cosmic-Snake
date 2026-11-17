$scoreboard players set #cosmicsnake.config cosmicsnake.config.bossbar $(value)

execute if score #cosmicsnake.config cosmicsnake.config.bossbar matches 1 run function cosmicsnake:boss/set_bossbar

execute if score #cosmicsnake.config cosmicsnake.config.bossbar matches 0 run bossbar remove cosmicsnake:cosmicsnake_bossbar

function cosmicsnake:config/menu