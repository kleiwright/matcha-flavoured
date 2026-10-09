# This function runs every tick

# Optimised by Hashiru
# Check timers
# Hashiru: No need to put XX.1.. as it does >=
execute if stopwatch minecraft:0.5s 0.5.. run function matcha:timers/0_5/timer
execute if stopwatch minecraft:1s 1.. run function matcha:timers/1s/timer
execute if stopwatch minecraft:2s 2.. run function matcha:timers/2s/timer
execute if stopwatch minecraft:3s 3.. run function matcha:timers/3s/timer

execute if stopwatch minecraft:divinity 30.. run function matcha:timers/divinity/timer

# Left this one default because dev did some random magic with it
execute if stopwatch minecraft:eerie 150.1.. run function matcha:timers/eerie/timer
