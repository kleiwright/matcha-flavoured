# These functions are run once every Second
schedule function matcha:timers/1s 1s replace

# Debug
# say Clock 1s

# Functions


# Pigs
execute as @e[type=pig] at @s run function matcha:environmental/pig/pig_gift
execute as @e[tag=muddy] if predicate matcha:in_water run scoreboard players set @s matcha.muddy_cooldown -1
execute as @e[tag=muddy] run execute at @s run function matcha:environmental/pig/pig_clean
# If a mob is an infant, and is not age-locked, age them
execute as @e[type=pig,tag=infant] unless entity @s[nbt={AgeLocked:1b}] run execute at @s run function matcha:environmental/pig/age_infant

#Cows
execute as @e[type=cow,tag=hungry] at @s run function matcha:environmental/cow/cow_eat
execute as @e[type=cow] at @s run function matcha:environmental/cow/cow_graze
execute as @e[type=cow,tag=happy] at @s run function matcha:environmental/cow/cow_happy
# Troughs
execute as @e[type=minecraft:marker,tag=trough] run function matcha:environmental/cow/trough/update

# Chicken
execute as @e[type=chicken] at @s run function matcha:environmental/chicken/chicken_gift
execute as @e[type=chicken] at @s run function matcha:environmental/chicken/chicken_plant
execute as @e[type=chicken,tag=nest_maker] at @s run function matcha:environmental/chicken/chicken_nest
# Roosts
execute as @e[type=minecraft:marker,tag=roost] run function matcha:environmental/chicken/roost/update

# Kettles
execute as @e[type=minecraft:marker,tag=kettle,tag=placed] run function matcha:mechanics/kettle/update_kettle

#Hunger
execute as @a[scores={hunger_timer=0..}] at @s run function matcha:effects/hunger/effect

# Chicken
execute as @e[type=sheep] at @s run function matcha:environmental/sheep/sheep_trample