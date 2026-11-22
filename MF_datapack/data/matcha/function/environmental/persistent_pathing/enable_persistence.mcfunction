execute if entity @s[tag=persistence_enabled] run return fail

# Tag animal for persistence
tag @s add persistence_enabled

# Summon armadillo
summon armadillo ~ ~ ~ {Invulnerable:1b,Silent:1b,Tags:["persistence"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}
data modify entity @n[type=armadillo] home_radius set from entity @s home_radius
data modify entity @n[type=armadillo] home_pos set from entity @s home_pos

ride @n[type=armadillo] mount @s

# Anti-drowning quick fix
effect give @s minecraft:water_breathing infinite 0 true