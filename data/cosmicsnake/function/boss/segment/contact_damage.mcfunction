# if there isn't a player stop
execute unless entity @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2,limit=1] run return 0

# damage scale depending on the energy

execute on passengers if entity @s[tag=cosmicsnake.segment,nbt={item:{components:{"minecraft:dyed_color":3803230}}}] \
    on vehicle at @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2,limit=8] \
        run return run damage @p[distance=..1] 7 cosmicsnake:segment_contact by @s

execute on passengers if entity @s[tag=cosmicsnake.segment,nbt={item:{components:{"minecraft:dyed_color":6688420}}}] \
    on vehicle at @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2,limit=8] \
        run return run damage @p[distance=..1] 9 cosmicsnake:segment_contact by @s

execute on passengers if entity @s[tag=cosmicsnake.segment,nbt={item:{components:{"minecraft:dyed_color":9508075}}}] \
    on vehicle at @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2,limit=8] \
        run return run damage @p[distance=..1] 11 cosmicsnake:segment_contact by @s

execute on passengers if entity @s[tag=cosmicsnake.segment,nbt={item:{components:{"minecraft:dyed_color":11025909}}}] \
    on vehicle at @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2,limit=8] \
        run return run damage @p[distance=..1] 16 cosmicsnake:segment_contact by @s