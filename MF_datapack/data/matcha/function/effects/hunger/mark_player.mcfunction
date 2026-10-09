#I called this mark_player because thats what Linkershim did and they're brilliant so idk
# Reset trigger
advancement revoke @s only matcha:mechanics/has_hunger_effect

# If they are granted or cleared of hunger, check to see if they have hunger, and if so tag them so that the UI element displays for ~1 second
# This will not fire in easy mode
#Run effect
execute unless score current_world_settings_difficulty difficulty_score matches 1 \
    if predicate matcha:effects/has_hunger \
    run function matcha:effects/hunger/effect_loop

#Sound FX on gaining hunger
execute unless score current_world_settings_difficulty difficulty_score matches 1 \
    if predicate matcha:effects/has_hunger \
    run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5


#The effect cleared functions don't work, Its very late and I think im too tired to think proper, let me know If i overlooked something 
#If Player is cleared of hunger
# execute unless score current_world_settings_difficulty difficulty_score matches 1 \
#     unless predicate matcha:effects/has_hunger \
#     run title @s actionbar [{text:"\uE04C",color:"white"},{text:" \uE048\uE046\uE046\uE046\uE046\uE047",color:"white"}]
