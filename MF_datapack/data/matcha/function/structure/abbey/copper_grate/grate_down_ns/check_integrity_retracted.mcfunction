say hidddRetracted
# Remove Broken tag, to see if it was fixed
tag @s remove grate.broken

# Check if all blocks are still there
execute unless block ~ ~ ~-1 minecraft:waxed_copper_grate run function matcha:structure/abbey/copper_grate/break
execute unless block ~ ~ ~1 minecraft:waxed_copper_grate run function matcha:structure/abbey/copper_grate/break

# If it is broken, do nothing
execute if entity @s[tag=grate.broken] run return fail

say HIT
function matcha:structure/abbey/copper_grate/hit_particles

# Retract the grate
function matcha:structure/abbey/copper_grate/grate_down_ns/extend
tp @s ~ ~-3 ~
tag @s add grate.extended