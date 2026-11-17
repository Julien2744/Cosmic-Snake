$data modify storage cosmicsnake:global move_speed set value $(value)

# check incorrect value
execute unless predicate cosmicsnake:config/move_speed \
    run function cosmicsnake:config/error_message {msg:"Error: value must be bewteen 0.0f and 1.0f inclusive"}
execute unless predicate cosmicsnake:config/move_speed \
    run data modify storage cosmicsnake:global move_speed set compute default float cosmicsnake:config_default_value/move_speed

execute if predicate cosmicsnake:config/check_error run return run data modify storage cosmicsnake:global config_error set value false
function cosmicsnake:config/menu