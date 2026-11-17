#$say $(dmg_taken)

# increase energy
$execute on passengers if entity @s[tag=aj.cosmicsnake_head.root] at @s run function cosmicsnake:boss/head/increase_energy {dmg_taken:$(dmg_taken)}

# damage the boss
tag @s add cosmicsnake.damage_source.segment
$damage @s $(dmg_taken) cosmicsnake:segment_transfer