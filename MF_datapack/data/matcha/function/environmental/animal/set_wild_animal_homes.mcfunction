# Returns fails in order to save on processing time?

execute if @s[type=chicken] run function matcha:environmental/chicken/find_roost/check_home
execute if @s[type=chicken] run return fail

execute if @s[type=pig] run function matcha:environmental/pig/set_home
execute if @s[type=pig] run return fail

execute if @s[type=sheep] run function matcha:environmental/sheep/set_home
execute if @s[type=sheep] run return fail

# At this point the entity must be a cow
# If there is a new cow (most likley baby) who is a near a cow with a trough, and does not have a home, set their home to the parent's trough
execute if @n[type=cow,tag=has_trough,distance=..5] run function matcha:environmental/cow/set_trough_home
execute if @s[type=cow] run function matcha:environmental/cow/set_home
