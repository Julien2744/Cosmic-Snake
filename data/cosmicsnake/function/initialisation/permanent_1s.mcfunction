schedule function cosmicsnake:initialisation/permanent_1s 1s

function cosmicsnake:initialisation/update_gamerule

# enable post effect triggre objective
scoreboard players enable @a cosmicsnake.config.disable_posteffect

# trigger logic
execute at @a[scores={cosmicsnake.config.disable_posteffect=2..}] at @p[distance=..1] run function cosmicsnake:config/trigger/disable_posteffect
execute at @a[scores={cosmicsnake.config.disable_posteffect=..-1}] at @p[distance=..1] run function cosmicsnake:config/trigger/disable_posteffect

# ray-cannon
execute as @a[predicate=cosmicsnake:ray_cannon/on_cooldown] run function cosmicsnake:raycannon/1scooldown