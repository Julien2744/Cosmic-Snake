$scoreboard players set #cosmicsnake.config cosmicsnake.config.max_segment_tick $(value)

# check incorrect value
execute unless score #cosmicsnake.config cosmicsnake.config.max_segment_tick matches 2..64 \
    run function cosmicsnake:config/error_message {msg:"Error: value must be bewteen 2 and 64 inclusive"}
execute unless score #cosmicsnake.config cosmicsnake.config.max_segment_tick matches 2..64 \
    store result score #cosmicsnake.config cosmicsnake.config.max_segment_tick run compute default integer cosmicsnake:config_default_value/max_segment_tick

execute if predicate cosmicsnake:config/check_error run return run data modify storage cosmicsnake:global config_error set value false
function cosmicsnake:config/menu