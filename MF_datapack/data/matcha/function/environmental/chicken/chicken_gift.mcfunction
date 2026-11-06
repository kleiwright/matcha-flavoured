# init scoreboard timer for new pigs
execute \
    unless score @s matcha.chicken_gifting_cooldown = @s matcha.chicken_gifting_cooldown \
    store result score @s matcha.chicken_gifting_cooldown \
    run random value 300..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.chicken_gifting_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.chicken_gifting_cooldown matches ..0 run return fail
execute unless block ~ ~-0.5 ~ #matcha:animal_affects/bird_peckable run return fail

# Interact with block
# This is ~ ~+0.5 ~ in case the chicken is on farmland, im worried due to the <1 block HB, that ~ ~ ~ would register as farmland instead of the wheat
#       Same with -0.8

execute if block ~ ~-0.5 ~ #matcha:animal_affects/seagull_peckable \
    unless block ~ ~0.5 ~ #matcha:animal_affects/chicken_edible \
    if predicate matcha:mob_checks/is_seagull \
    run function matcha:environmental/chicken/peck/animation

execute if block ~ ~ ~ #matcha:animal_affects/duck_divable \
    unless block ~ ~0.5 ~ #matcha:animal_affects/chicken_edible \
    if predicate matcha:mob_checks/is_duck \
    run function matcha:environmental/chicken/dive/animation

execute if block ~ ~-0.5 ~ #matcha:animal_affects/chicken_peckable \
    unless block ~ ~0.5 ~ #matcha:animal_affects/chicken_edible \
    unless predicate matcha:mob_checks/is_seagull \
    run function matcha:environmental/chicken/peck/animation

# Nesting
execute if block ~ ~-0.5 ~ #matcha:animal_affects/chicken_peckable \
    if block ~ ~0.5 ~ #matcha:animal_affects/chicken_edible \
    unless predicate matcha:mob_checks/is_seagull \
    unless predicate matcha:mob_checks/is_duck \
    unless predicate matcha:mob_checks/is_baby \
    unless entity @s[tag=mama] \
    run function matcha:environmental/chicken/eat/animation
#   Seagulls do not nest (It would be weird if they nested in farmland instead of the beach) Nor babies or mamas

# --- Reset timer
execute store result score @s matcha.chicken_gifting_cooldown run random value 300..600