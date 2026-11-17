## --- global --- ##
data merge storage cosmicsnake:global {\
    random_ID:0,\
    move_speed:0.4f,\
    hp_multiplyer:1.0f,\
    dmg_multiplyer:1.0f,\
    config_error:false\
}
scoreboard objectives add cosmicsnake.math.memory dummy
# constant
scoreboard objectives add cosmicsnake.math.100 dummy
scoreboard objectives add cosmicsnake.check_blocks dummy
scoreboard objectives add cosmicsnake.boss_max_health dummy
scoreboard objectives add cosmicsnake.schedule_count dummy
## gamerules
# bool
scoreboard objectives add cosmicsnake.gamerule.mob_griefing dummy
# 0: Peaceful ; 1: Easy ; 2: Normal ; 3: Hard 
scoreboard objectives add cosmicsnake.gamerule.difficulty dummy
# bool
scoreboard objectives add cosmicsnake.gamerule.mob_drops dummy

## --- config --- ##
# bool
scoreboard objectives add cosmicsnake.config.boss_drop_block dummy
scoreboard objectives add cosmicsnake.config.segment_count dummy
# bool
scoreboard objectives add cosmicsnake.config.bossbar dummy
# bool - Player
scoreboard objectives add cosmicsnake.config.disable_posteffect trigger
# also used for boss
scoreboard objectives add cosmicsnake.config.max_segment_tick dummy

## --- Boss --- ##
# bool
scoreboard objectives add cosmicsnake.stop dummy
# bool
scoreboard objectives add cosmicsnake.can_move dummy
# bool
scoreboard objectives add cosmicsnake.can_attack dummy
# temporary
scoreboard objectives add cosmicsnake.segment_count dummy
scoreboard objectives add cosmicsnake.moveback_duration dummy
scoreboard objectives add cosmicsnake.moveback_repetition dummy
scoreboard objectives add cosmicsnake.moveback_count dummy
scoreboard objectives add cosmicsnake.health dummy
scoreboard objectives add cosmicsnake.health_pour dummy
scoreboard objectives add cosmicsnake.energy dummy
scoreboard objectives add cosmicsnake.energy_repetition dummy
scoreboard objectives add cosmicsnake.attack_ID dummy
scoreboard objectives add cosmicsnake.attack_cooldown dummy
scoreboard objectives add cosmicsnake.damage dummy
scoreboard objectives add cosmicsnake.servents_count dummy

## --- Players --- ##

## --- initialisation --- ##
# - config
execute store result score #cosmicsnake.config cosmicsnake.config.segment_count run compute default integer cosmicsnake:config_default_value/segment_count
execute store result score #cosmicsnake.config cosmicsnake.config.max_segment_tick run compute default integer cosmicsnake:config_default_value/max_segment_tick
data modify storage cosmicsnake:global move_speed set compute default float cosmicsnake:config_default_value/move_speed
data modify storage cosmicsnake:global hp_multiplyer set compute default float cosmicsnake:config_default_value/hp_multiplyer
data modify storage cosmicsnake:global dmg_multiplyer set compute default float cosmicsnake:config_default_value/dmg_multiplyer
scoreboard players set #cosmicsnake.config cosmicsnake.config.boss_drop_block 0
scoreboard players set #cosmicsnake.config cosmicsnake.config.bossbar 1
# - global
data modify storage cosmicsnake:global lenght set compute default float cosmicsnake:calculate_snake_lenght
scoreboard players set #cosmicsnake.global cosmicsnake.math.100 100
execute unless score #cosmicsnake.global cosmicsnake.load_scoreboard matches 1 run scoreboard players set #cosmicsnake.global cosmicsnake.schedule_count 0

# permanent schedules
schedule function cosmicsnake:initialisation/permanent_1s 1s

## --- scoreboard version --- ##
scoreboard players set #cosmicsnake.global cosmicsnake.scoreboard_version 1

# mark initialisation as done
scoreboard players set #cosmicsnake.global cosmicsnake.load_scoreboard 1