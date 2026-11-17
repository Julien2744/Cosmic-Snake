playsound minecraft:entity.shulker.hurt_closed ui @s ~ ~ ~
$tellraw @s {"color":"red","text":"$(msg)"}
data modify storage cosmicsnake:global config_error set value true