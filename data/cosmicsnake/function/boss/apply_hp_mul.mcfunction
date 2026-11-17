# remove half the entity health for the next attribute modifier to act intended
attribute @s minecraft:max_health modifier add cosmicsnake:remove_half -1 add_multiplied_base

# multiply the base hp (without adding using the previous modifier)
$attribute @s minecraft:max_health modifier add cosmicsnake:max_hp_mul $(hp_multiplyer) add_multiplied_base