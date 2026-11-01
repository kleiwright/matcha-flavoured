# Runs if the player tries to bind another's pet to a whistle
# tellraw @s {"translate": "log.kleispack.gudi.bind_fail_not_owner", "color": "red", "with": [{"selector": "@n[type=#matcha:gudi_summons]"}]}
# playsound minecraft:item.bone_meal.use neutral @s ~ ~ ~
execute anchored eyes positioned ^ ^ ^1.5 run execute at @n run particle angry_villager ~ ~1 ~ 0 0 0 0 1
playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.5
data remove storage matcha:gudi owner_UUID