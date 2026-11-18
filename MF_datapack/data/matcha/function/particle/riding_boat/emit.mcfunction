# Read the rider's speed before switching execution to the mounted boat.
execute if score @s boating matches 12.. run return run execute on vehicle if entity @s[type=#minecraft:boat] at @s run function matcha:particle/riding_boat/fast
execute on vehicle if entity @s[type=#minecraft:boat] at @s run function matcha:particle/riding_boat/slow
