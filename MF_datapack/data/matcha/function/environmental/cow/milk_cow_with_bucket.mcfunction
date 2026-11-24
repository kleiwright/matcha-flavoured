# If the cow has no milk left, give them the bucket back, and make the cow angry!
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches ..0 run damage @n[type=minecraft:cow,tag=milking] 0.1
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches ..0 run execute at @n[type=minecraft:cow,tag=milking] run particle angry_villager ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches ..0 run give @s bucket 1

# Give a milk bucket if the cow has milk in the reserve
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches 1.. run loot give @s loot matcha:food/minecraft/milk_bucket
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches 1.. run playsound minecraft:entity.cow.milk player
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches 1.. run scoreboard players remove @n[type=minecraft:cow,tag=milking] matcha.milk_reserve 4
# Yes, the milking reserve can go negative
#       Why?: If a player tries to milk a cow at 3 and it hurt the cow, the milk bucket would not be used, so a player would think that they are at 0
#             If the cow did not get hurt, the player would be confused as to why they couldn't milk, and assume there is no more milk left, even if there was at least 3 bottles worth
#             So overmilking seemed like a fine solution, it would still need the time to gain the milk back, the debt must still be paid

tag @n[type=minecraft:cow,tag=milking] remove milking

advancement revoke @s only matcha:mechanics/cow/milk_cow_with_bucket