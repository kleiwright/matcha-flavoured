# This function is called once per second for every player with a score of 0 or more on the wither_timer scoreboard

# IF they no longer have wither, remove them from the scoreboard and cancel the rest of this function
execute unless predicate matcha:effects/has_wither run return run scoreboard players reset @s wither_timer

#Apply wither_resistance based on current armour
function matcha:enchantment_effects/shakudo_effects/wither_resistance/apply_resistance

#Add the time based on their resistance to it
execute if score @s shakudo_wither_resistance matches ..0 \
    if score @s wither_timer matches ..0 run \
    scoreboard players add @s wither_timer 9
execute if score @s shakudo_wither_resistance matches 1 \
    if score @s wither_timer matches ..0 run \
    scoreboard players add @s wither_timer 11
execute if score @s shakudo_wither_resistance matches 2 \
    if score @s wither_timer matches ..0 run \
    scoreboard players add @s wither_timer 12
execute if score @s shakudo_wither_resistance matches 3 \
    if score @s wither_timer matches ..0 run \
    scoreboard players add @s wither_timer 13
execute if score @s shakudo_wither_resistance matches 4 \
    if score @s wither_timer matches ..0 run \
    scoreboard players add @s wither_timer 14

scoreboard players remove @s wither_timer 1

execute if score current_world_settings_difficulty difficulty_score matches 2 run function matcha:effects/wither/effect_normal
execute if score current_world_settings_difficulty difficulty_score matches 3 run function matcha:effects/wither/effect_hard

# I duped the effect (heartbreaker) to both functions, this is because they have different times, and I wanted to make sure the function returned before applying clearing
# Feel free to change that if you hate it linkershim