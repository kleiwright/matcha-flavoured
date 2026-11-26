# If the player is in survival, and not wearing Maximum freezing Prot, run freezing effects
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate matcha:in_frozen_water unless predicate matcha:armour_enchants/freezing_protection run effect give @s minecraft:freezing 5 0 true
