# This function was originally very inefficient
# Constantly checking all particles in the world
# Now they are only checked once and then marked as checked
execute as @e[type=item,tag=!particle_checked] run function matcha:particle/item_particles_check

execute as @e[type=item,tag=particle_checked,tag=particle_nether_star] at @s run function matcha:particle/item_particle_nether_star_motion
execute as @e[type=item,tag=particle_checked,tag=particle_ender_eye] at @s run function matcha:particle/item_particle_ender_eye_motion

# Particles moved to the 0_5s timer section
