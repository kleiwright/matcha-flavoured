difficulty normal
execute store result score current_world_settings_difficulty difficulty_score run difficulty
execute if score current_world_settings_difficulty difficulty_score matches 3 run return fail
title @s title {"color":"red","translate":"error.kleispack.hard_too_early"}
title @s subtitle {"color":"red","translate":"error.kleispack.hard_too_early.subtitle"}
tellraw @s {"color":"gray","translate":"error.kleispack.hard_too_early.desc"}
reload