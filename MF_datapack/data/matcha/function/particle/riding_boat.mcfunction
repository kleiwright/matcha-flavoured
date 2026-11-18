execute as @a[scores={boating=1..}] at @s if block ~ ~-.1 ~ water run function matcha:particle/riding_boat/emit
scoreboard players set @a[scores={boating=1..}] boating 0
