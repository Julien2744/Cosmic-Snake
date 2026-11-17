$data modify storage cosmicsnake:global dmg_multiplyer set value $(value)

# check incorrect value
execute unless predicate cosmicsnake:config/dmg_multiplyer \
    run function cosmicsnake:config/error_message {msg:"Error: value must be bewteen 0.0f and 100.0f inclusive"}
execute unless predicate cosmicsnake:config/dmg_multiplyer \
    run data modify storage cosmicsnake:global dmg_multiplyer set compute default float cosmicsnake:config_default_value/dmg_multiplyer

execute if predicate cosmicsnake:config/check_error run return run data modify storage cosmicsnake:global config_error set value false
function cosmicsnake:config/menu