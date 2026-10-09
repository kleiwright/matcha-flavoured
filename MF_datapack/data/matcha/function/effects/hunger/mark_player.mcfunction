#I called this mark_player because thats what Linkershim did and they're brilliant so idk
# Reset trigger
advancement revoke @s only matcha:mechanics/has_hunger_effect

#Set hunger_timer score to current length of hunger
execute unless score current_world_settings_difficulty difficulty_score matches 1 run \
    function matcha:effects/hunger/get_duration_time.macro with entity @s active_effects[{id:"minecraft:hunger"}]

# THIS FUNCTION calls timers/1s.mcfunction