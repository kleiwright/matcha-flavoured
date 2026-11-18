# Make everyone who has more than 0 deaths score run the hpdown function
execute as @a[scores={deaths=1..}] run function matcha:mechanics/heart_container/hpdown
