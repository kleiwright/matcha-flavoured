# These functions are run once every Second
schedule function matcha:timers/1s 1s replace

# Debug
# say Clock 1s

# Functions
execute as @a[scores={hunger_timer=0..}] at @s run function matcha:effects/hunger/effect