tag @s remove grate.checked
execute if entity @s[tag=grate.extended] run function matcha:structure/abbey/copper_grate/grate_side_ew/check_integrity_extended
execute if entity @s[tag=!grate.extended,tag=!grate.checked] run function matcha:structure/abbey/copper_grate/grate_side_ew/check_integrity_retracted

# We check to see if it wax checked by /check_integrity_extended, if we don't then it will run the retracted as well, and end up seeing itsself as broken