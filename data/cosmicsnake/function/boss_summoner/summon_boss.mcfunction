function cosmicsnake:create_schedule

execute store result storage cosmicsnake:global random_ID int 1 run random value 2..10000000

function cosmicsnake:boss/head/summon/entity with storage cosmicsnake:global
tag @n[type=item_display,tag=aj.cosmicsnake_head.root,distance=..6] add cosmicsnake.boss_summoner.responsible
tag @n[type=item_display,tag=aj.cosmicsnake_head.root,distance=..6] add cosmicsnake.boss_summoner.stop