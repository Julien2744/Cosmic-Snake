$scoreboard players set #cosmicsnake.config cosmicsnake.config.segment_count $(value)

# check incorrect value
execute unless score #cosmicsnake.config cosmicsnake.config.segment_count matches 5..64 \
    run function cosmicsnake:config/error_message {msg:"Error: value must be bewteen 5 and 64 inclusive"}
execute unless score #cosmicsnake.config cosmicsnake.config.segment_count matches 5..64 \
    store result score #cosmicsnake.config cosmicsnake.config.segment_count run compute default integer cosmicsnake:config_default_value/segment_count

execute if predicate cosmicsnake:config/check_error run return run data modify storage cosmicsnake:global config_error set value false
function cosmicsnake:config/menu