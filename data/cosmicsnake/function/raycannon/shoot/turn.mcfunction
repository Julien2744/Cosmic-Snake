# return true if we found a turn

# facing nearest mob
execute positioned ~ ~-1 ~ facing entity @n[type=!#cosmicsnake:non_living,type=!minecraft:player,nbt={HurtTime:0s},distance=..4] feet run return run rotate @s ~ ~

# wall
execute facing ^0.3 ^ ^0.75 if block ^ ^ ^0.75 #minecraft:replaceable run return run rotate @s ~ ~
execute facing ^-0.3 ^ ^0.75 if block ^ ^ ^0.75 #minecraft:replaceable run return run rotate @s ~ ~

# floor
execute facing ^ ^0.5 ^0.25 if block ^ ^ ^0.75 #minecraft:replaceable run return run rotate @s ~ ~

# ceiling
execute facing ^ ^-0.75 ^0.75 if block ^ ^ ^0.75 #minecraft:replaceable run return run rotate @s ~ ~

# basic turn
execute facing ^ ^-0.3 ^-0.75 if block ^ ^ ^0.5 #minecraft:replaceable run return run rotate @s ~ ~

# otherwise don't
return fail