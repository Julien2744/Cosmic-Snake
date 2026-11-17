# remove half the entity health for the next attribute modifier to act intended
attribute @s minecraft:attack_damage modifier add cosmicsnake:remove_half -1 add_multiplied_base

# multiply the base hp (without adding using the previous modifier)
$attribute @s minecraft:attack_damage modifier add cosmicsnake:dmg_mul $(dmg_multiplyer) add_multiplied_base