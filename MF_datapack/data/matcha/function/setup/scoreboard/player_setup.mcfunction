# This function is called by the "matcha:setup/update_this_player" function
# This function is run once by each new player in the world, or by each player which last joined the world on an earlier version of Matcha
# This function sets up initial scores for mechanics which require a starting score that isn't null(no score) to work

scoreboard players add @s sneaking 0

# If player's minimum hearts score is below the minimum for Hard, they must either have no score or an invalid one, so set it to the default of 20
execute unless score @s minimum_hearts >= $Hard minimum_hearts run scoreboard players set @s minimum_hearts 20

# Sync Hearts value with player's max hp
execute store result score @s Hearts run attribute @s minecraft:max_health get