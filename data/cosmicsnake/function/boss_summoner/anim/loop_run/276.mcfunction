execute as @e[type=minecraft:end_crystal,distance=..5,limit=5,sort=nearest] run damage @s 1
kill @n[type=minecraft:block_display,tag=cosmicsnake.fake_beacon,distance=..1]
playsound minecraft:entity.creaking.death block @a[distance=..32] ~ ~ ~ 8 0
fill ~-4 ~-8 ~-4 ~4 ~4 ~4 air replace minecraft:end_portal

execute positioned ~ ~60 ~ run function cosmicsnake:boss_summoner/summon_boss