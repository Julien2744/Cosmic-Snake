$data modify storage cosmicsnake:global hp_multiplyer set value $(value)

# check incorrect value
execute unless predicate cosmicsnake:config/hp_multiplyer \
    run function cosmicsnake:config/error_message {msg:"Error: value must be bewteen 0.0f and 100.0f inclusive"}
execute unless predicate cosmicsnake:config/hp_multiplyer \
    run data modify storage cosmicsnake:global hp_multiplyer set compute default float cosmicsnake:config_default_value/hp_multiplyer

execute if predicate cosmicsnake:config/check_error run return run data modify storage cosmicsnake:global config_error set value false
function cosmicsnake:config/menu