#No Armour & Weapon Drops
execute as @s if predicate matcha:mob_checks/is_mundane_hostiles run function matcha:mechanics/spawn_mechanic/clear_drop_chances
#Weak Skeletons
execute as @s if predicate matcha:mob_checks/is_skeletons run function matcha:mechanics/spawn_mechanic/normal_modifications/modify_skeletons
#Weak Creepers
execute as @s if predicate matcha:mob_checks/is_creeper run function matcha:mechanics/spawn_mechanic/normal_modifications/modify_creeper
#Weak but Fast Cavespiders
execute as @s if predicate matcha:mob_checks/is_cave_spider run function matcha:mechanics/spawn_mechanic/normal_modifications/modify_cave_spider
#Fast Zombies (Only regular zombies)
execute as @s if predicate matcha:mob_checks/is_zombie unless predicate matcha:mob_checks/is_baby run function matcha:mechanics/spawn_mechanic/normal_modifications/modify_zombie
# Baby Zombies
execute as @s if predicate matcha:mob_checks/is_zombies if predicate matcha:mob_checks/is_baby run function matcha:mechanics/spawn_mechanic/normal_and_easy_modifications/modify_baby_zombies
#Strong and Slow Husks
execute as @s if predicate matcha:mob_checks/is_husk unless predicate matcha:mob_checks/is_baby run function matcha:mechanics/spawn_mechanic/normal_modifications/modify_husk
#Weak Silverfish
execute as @s if predicate matcha:mob_checks/is_silverfish run function matcha:mechanics/spawn_mechanic/normal_and_easy_modifications/modify_silverfish
#Jumping Spiders
execute as @s if predicate matcha:mob_checks/is_spider run function matcha:mechanics/spawn_mechanic/normal_modifications/modify_spider
#Weak, Fast/Slow Frostbite
execute as @s if predicate matcha:mob_checks/is_frostbite unless predicate matcha:mob_checks/is_baby if predicate matcha:mob_checks/is_holding_ice_ball run function matcha:mechanics/spawn_mechanic/normal_modifications/modify_ice_ball_frostbite
execute as @s if predicate matcha:mob_checks/is_frostbite unless predicate matcha:mob_checks/is_baby unless predicate matcha:mob_checks/is_holding_ice_ball run function matcha:mechanics/spawn_mechanic/normal_modifications/modify_zombie