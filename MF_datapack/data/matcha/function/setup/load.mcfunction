# Set required Gamerules
function matcha:setup/gamerules

# Set up Scoreboards
function matcha:setup/scoreboard/create_scoreboards

# Print information to players
tellraw @a {"bold":false,"color":"#65E082","translate":"log.kleispack.now_loaded","with":["1.12.1"]}
tellraw @a {"bold":false,"color":"#8fb398","translate":"log.kleispack.now_loaded.desc"}
execute if score current_world_settings_difficulty difficulty_score matches 3 run tellraw @a [{"text":"[\u2620\u2620\u2620] ","color":"red"},{"translate":"log.kleispack.gamemode_is","color":"gray"},{"text":" "},{"translate":"log.kleispack.hard","bold":true,"color":"red"},{"text":" "},{"text":"\n"},{"translate":"log.kleispack.difficulty_disclaimer","color":"dark_gray"}]
execute if score current_world_settings_difficulty difficulty_score matches 2 run tellraw @a [{"text":"[\u2620] ","color":"gold"},{"translate":"log.kleispack.gamemode_is","color":"gray"},{"text":" "},{"translate":"log.kleispack.normal","bold":true,"color":"gold"},{"text":" "},{"text":"\n"},{"translate":"log.kleispack.difficulty_disclaimer","color":"dark_gray"}]
execute if score current_world_settings_difficulty difficulty_score matches 1 run tellraw @a [{"text":"[⛏] ","color":"green"},{"translate":"log.kleispack.gamemode_is","color":"gray"},{"text":" "},{"translate":"log.kleispack.easy","bold":true,"color":"green"},{"text":" "},{"text":"\n"},{"translate":"log.kleispack.difficulty_disclaimer","color":"dark_gray"}]

# Start player update checker
function matcha:setup/player_update_check_loop