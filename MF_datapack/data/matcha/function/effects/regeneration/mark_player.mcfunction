#I called this mark_player because thats what Linkershim did and their brilliant so idk
# Reset trigger
advancement revoke @s only matcha:mechanics/has_regeneration_effect

# If they are granted (and sometimes cleared of) regeneration, check to see if they have hunger, and if so, remove any regen
# This will not fire in easy mode
execute unless score current_world_settings_difficulty difficulty_score matches 1 \
    if predicate matcha:effects/has_hunger \
    run effect clear @s minecraft:regeneration

# THIS FUNCTION calls timers/1s/wither_effect (go there to see what happens next)