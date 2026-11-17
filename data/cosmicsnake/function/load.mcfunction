## ------ Cosmic Snake Datapack ------ ##
# Minecraft version: 26.3
# datapack version: beta-1.0
# resourcepack version: v1.0
# 
# scoreboard version: 1
##

scoreboard objectives add cosmicsnake.load_scoreboard dummy

## auto update ##
scoreboard objectives add cosmicsnake.scoreboard_version dummy

execute if score #cosmicsnake.global cosmicsnake.load_scoreboard matches 1 \
    run execute unless score #cosmicsnake.global cosmicsnake.scoreboard_version matches 1 \
        run function cosmicsnake:initialisation/init_scoreboards

execute unless score #cosmicsnake.global cosmicsnake.load_scoreboard matches 1 run function cosmicsnake:initialisation/init_scoreboards

## check for missing mod ##
scoreboard objectives add cosmicsnake.depedency_check dummy
scoreboard players set #cosmicsnake.global cosmicsnake.depedency_check 0
function cosmicsnake:check_depedency
# mod isn't added
execute unless score #cosmicsnake.global cosmicsnake.depedency_check matches 1 \
    run function cosmicsnake:no_depedency_warning

#say cosmicsnake reloaded