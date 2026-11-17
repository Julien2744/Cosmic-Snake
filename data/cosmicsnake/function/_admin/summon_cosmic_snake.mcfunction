# random ID using storage
function cosmicsnake:create_schedule

execute store result storage cosmicsnake:global random_ID int 1 run random value 2..10000000

execute positioned ~ ~4 ~ run function cosmicsnake:boss_summoner/summon_portal

function cosmicsnake:boss/head/summon/entity with storage cosmicsnake:global