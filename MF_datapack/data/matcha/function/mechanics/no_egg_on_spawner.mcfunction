execute if entity @s[gamemode=!creative] run fill ~-16 ~-16 ~-16 ~16 ~16 ~16 air replace minecraft:spawner destroy
execute if entity @s[gamemode=!creative] run fill ~-16 ~-16 ~-16 ~16 ~16 ~16 air replace minecraft:trial_spawner destroy
advancement revoke @s only matcha:mechanics/no_eggs_on_spawners
damage @s 1