# Set up Scoreboards
function matcha:setup/scoreboard/create_scoreboards

# Start Clock functions
schedule function matcha:timers/0.5s 0.5s replace
schedule function matcha:timers/1s 1s replace
schedule function matcha:timers/2s 2s replace
schedule function matcha:timers/3s 3s replace
schedule function matcha:timers/10s 10s replace
schedule function matcha:timers/60s 60s replace

# Print information to players
tellraw @a {"bold":false,"color":"#65E082","translate":"log.kleispack.now_loaded","with":["1.13.0"]}
tellraw @a {"bold":false,"color":"#8fb398","translate":"log.kleispack.now_loaded.desc"}
execute if score current_world_settings_difficulty difficulty_score matches 3 run tellraw @a [{"text":"[\u2620\u2620\u2620] ","color":"red"},{"translate":"log.kleispack.gamemode_is","color":"gray"},{"text":" "},{"translate":"log.kleispack.hard","bold":true,"color":"red"},{"text":" "},{"text":"\n"},{"translate":"log.kleispack.difficulty_disclaimer","color":"dark_gray"}]
execute if score current_world_settings_difficulty difficulty_score matches 2 run tellraw @a [{"text":"[\u2620] ","color":"gold"},{"translate":"log.kleispack.gamemode_is","color":"gray"},{"text":" "},{"translate":"log.kleispack.normal","bold":true,"color":"gold"},{"text":" "},{"text":"\n"},{"translate":"log.kleispack.difficulty_disclaimer","color":"dark_gray"}]
execute if score current_world_settings_difficulty difficulty_score matches 1 run tellraw @a [{"text":"[⛏] ","color":"green"},{"translate":"log.kleispack.gamemode_is","color":"gray"},{"text":" "},{"translate":"log.kleispack.easy","bold":true,"color":"green"},{"text":" "},{"text":"\n"},{"translate":"log.kleispack.difficulty_disclaimer","color":"dark_gray"}]

# Start player update checker
function matcha:setup/player_update_check_loop

# Revoke all advancements that should be revoked by their reward function
# This is a safety net in case a reward function bug failed to revoke the advancement
advancement revoke @a from matcha:imm_revoke

# Start favorite food setup
function matcha:favorite_food/favorite_food_setup
