execute if entity @s[tag=cosmicsnake.immune] run return fail

tag @e[tag=cosmicsnake.target,distance=..128,limit=16] remove cosmicsnake.target

tag @s add cosmicsnake.target