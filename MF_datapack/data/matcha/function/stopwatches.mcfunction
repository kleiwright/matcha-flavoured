# Run wall-clock timers before the tick resets equipment scores.
execute if stopwatch minecraft:0.5s 0.5.. run function matcha:timers/0_5/timer
execute if stopwatch minecraft:1s 1.. run function matcha:timers/1s/timer
execute if stopwatch minecraft:3s 3.. run function matcha:timers/3s/timer

execute if stopwatch minecraft:eerie 150.. run stopwatch restart minecraft:eerie
