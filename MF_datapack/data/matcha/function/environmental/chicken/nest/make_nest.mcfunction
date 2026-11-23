setblock ~ ~-0.5 ~ minecraft:coarse_dirt
execute as @s at @s align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["roost","twig"]}
execute as @n[type=marker,tag=roost,tag=!placed] at @s run function matcha:environmental/chicken/roost/place

#Summon baby Bobwhite chicks
execute if predicate matcha:mob_checks/is_bobwhite run summon chicken ~ ~ ~ {Age:-24000,variant:"matcha:bobwhite"}
execute if predicate matcha:mob_checks/is_bobwhite run summon chicken ~ ~ ~ {Age:-24000,variant:"matcha:bobwhite"}

#Summon baby Temperate chicks
execute if predicate matcha:mob_checks/is_temperate_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:temperate"}
execute if predicate matcha:mob_checks/is_temperate_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:temperate"}

#Summon baby Cold chicks
execute if predicate matcha:mob_checks/is_cold_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:cold"}
execute if predicate matcha:mob_checks/is_cold_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:cold"}

#Summon baby Warm chicks
execute if predicate matcha:mob_checks/is_warm_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:warm"}
execute if predicate matcha:mob_checks/is_warm_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:warm"}

#Summon baby Duck chicks
execute if predicate matcha:mob_checks/is_duck run summon chicken ~ ~ ~ {Age:-24000,variant:"matcha:duck"}
execute if predicate matcha:mob_checks/is_duck run summon chicken ~ ~ ~ {Age:-24000,variant:"matcha:duck"}

# Seagulls DO NOT use this function bc they make a different kind of nest