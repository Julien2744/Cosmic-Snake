# move speed of the boss
$tp @s ^ ^ ^$(speed)
execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 run function cosmicsnake:boss/break_blocks

# check if the entity is in portal
execute if data entity @s {PortalCooldown:300} run tag @s add cosmicsnake.in_portal