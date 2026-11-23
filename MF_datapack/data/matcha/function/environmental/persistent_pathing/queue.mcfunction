# Called every 0.5s by timers

# Loop from 1 to 5
scoreboard players remove persistance_current_queue matcha.persistence_queue 1
execute if score persistance_current_queue matcha.persistence_queue matches ..0 run scoreboard players set persistance_current_queue matcha.persistence_queue 5


execute as @e[tag=persistence_queue,tag=!persistence_enabled] at @s \
    if score @s matcha.persistence_queue = persistance_current_queue matcha.persistence_queue \
    run function matcha:environmental/persistent_pathing/enable_persistence