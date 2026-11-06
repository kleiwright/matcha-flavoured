# If there is a trough nearby, and I am fed, make me sad
execute if entity @n[type=minecraft:marker,tag=trough,distance=..7] if entity @s[tag=fed] run tag @s add sad
execute if entity @n[type=minecraft:marker,tag=trough,distance=..7] if entity @s[tag=fed] run tag @s remove happy
# If there is NOT a trough near me, make me happy
execute if entity @n[type=minecraft:marker,tag=trough,distance=8..] if entity @s[tag=fed] run tag @s add happy
execute if entity @n[type=minecraft:marker,tag=trough,distance=8..] if entity @s[tag=fed] run tag @s remove sad

# reset happy timer
execute store result score @s[tag=happy] matcha.cow_happy_cooldown run random value 7200..7800

# If I am not fed, make me come back to the trough
execute as @s[tag=!fed,tag=!returning] run data merge entity @s {home_radius:5}
execute as @s[tag=!fed,tag=!returning] run tag @s add returning
execute as @s[tag=!fed,tag=!returning] run say returning
execute as @s[tag=!fed,tag=returning] run tag @s remove leaving
#   "fed" is modified in cow_happy. When the happy timer runs out, this means that they are likley in the field, and need to come back to the trough.
#   "returning" and "leaving" are used so that the home_radius is not continuously modified every second

# Sad milk penalty
execute unless score @s[tag=sad] matcha.milk_reserve matches 1.. run scoreboard players remove @s matcha.milk_reserve 1



#debug
# tellraw @a ["Milk Reserve: ",{"score":{"name":"@s","objective":"matcha.milk_reserve"}}]