# Apply Item particles
# These ran for 2 ticks per cycle I believe, so I changed the count to 2
execute at @e[type=item,tag=particle_checked,tag=particle_nether_star] run function matcha:timers/0_5/item_particles_functions/item_particles_nether_star
execute at @e[type=item,tag=particle_checked,tag=particle_divine_fragment] run particle minecraft:electric_spark ~ ~.4 ~ .1 .1 .1 0 2 normal
execute at @e[type=item,tag=particle_checked,tag=particle_crystal_heart] run particle minecraft:electric_spark ~ ~.4 ~ .1 .1 .1 0 2 normal
execute at @e[type=item,tag=particle_checked,tag=particle_ender_eye] run particle minecraft:portal ~ ~.3 ~ .1 .1 .1 0.5 2 normal