function cosmicsnake:remove_schedule

function aj:cosmicsnake_head/remove/all

kill @e[type=item_display,tag=cosmicsnake.desintegration_ray]
kill @e[type=item_display,tag=cosmicsnake.cosmic_shot]
kill @e[type=item_display,tag=cosmicsnake.big_cosmic_shot]
kill @e[type=minecraft:item_display,tag=cosmicsnake.ender_mine]
kill @e[type=minecraft:end_crystal,tag=cosmicsnake.pointblank_shot.crystal]
kill @e[type=minecraft:marker,tag=cosmicsnake.pointblank_shot.marker]
kill @e[type=minecraft:block_display,tag=cosmicsnake.meteor.rock]
kill @e[type=minecraft:block_display,tag=cosmicsnake.meteor.fire]

kill @e[tag=cosmicsnake.entity]

bossbar remove cosmicsnake:cosmicsnake_bossbar