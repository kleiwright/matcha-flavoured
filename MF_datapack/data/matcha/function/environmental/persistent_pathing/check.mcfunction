# Disable, requires no checks other than distance, cheap
execute if entity @p[distance=..32] if entity @s[tag=persistence_enabled] at @s run function matcha:environmental/persistent_pathing/disable_persistence

# Abort if the nearest player is close, or if they are already enabled
execute if entity @s[tag=persistence_enabled] run return fail
execute unless entity @p[distance=33..] run return fail

# Enable, requires more checks, expensive (/ride)
# init random queue score for animal
execute \
    unless score @s matcha.persistence_queue = @s matcha.persistence_queue \
    store result score @s matcha.persistence_queue \
    run random value 1..5

# Add them to the queue
tag @s add persistence_queue