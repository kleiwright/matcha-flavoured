
#Make sure they are on the scoreboard
scoreboard players add @s shakudo_regen 0

#These two numbers are the same for now, but they might not be in the future, so for ease of future balancing, the regen and wither_res numbers are seperate
execute if score @s shakudo_regen matches 1 run scoreboard players set @s shakudo_wither_resistance 1
execute if score @s shakudo_regen matches 2 run scoreboard players set @s shakudo_wither_resistance 2
execute if score @s shakudo_regen matches 3 run scoreboard players set @s shakudo_wither_resistance 3
execute if score @s shakudo_regen matches 4.. run scoreboard players set @s shakudo_wither_resistance 4