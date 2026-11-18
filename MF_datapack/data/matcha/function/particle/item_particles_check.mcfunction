# First mark it as checked
tag @s add particle_checked

# Now give it a type tag
execute if predicate matcha:items/is_ender_eye run tag @s add particle_ender_eye
execute if predicate matcha:items/is_divine_fragment run tag @s add particle_divine_fragment
execute if predicate matcha:items/is_crystal_heart run tag @s add particle_crystal_heart
execute if predicate matcha:items/is_nether_star run tag @s add particle_nether_star
execute if predicate matcha:items/is_blaze_powder run tag @s add particle_blaze_powder

# Only the floating item types need the gravity override.
execute if entity @s[tag=particle_ender_eye] run function matcha:particle/apply_no_grav
execute if entity @s[tag=particle_nether_star] run function matcha:particle/apply_no_grav
