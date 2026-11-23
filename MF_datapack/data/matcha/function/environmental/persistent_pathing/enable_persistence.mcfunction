# Tag animal for persistence
tag @s add persistence_enabled

# Summon armadillo
summon armadillo ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["persistence"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.25}]}
data modify entity @n[type=armadillo] home_radius set from entity @s home_radius
data modify entity @n[type=armadillo] home_pos set from entity @s home_pos

ride @n[type=armadillo] mount @s

# Anti-drowning quick fix
effect give @s minecraft:water_breathing infinite 0 true

# Remove from queue
tag @s remove persistence_queue
