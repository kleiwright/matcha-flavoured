# Only broadcast message to players near an invalid wither spawn
execute as @a at @s if entity @n[type=minecraft:wither,distance=..100,predicate=matcha:wither/invalid_wither_spawn,nbt=!{Invul:0}] run tellraw @s {translate:"error.kleispack.wither_spawn_invalid",color:"red"}

# `nbt=!{Invul:0}` ensures that the wither has just been summoned
execute as @e[type=wither,nbt=!{Invul:0}] if predicate matcha:wither/invalid_wither_spawn at @s run function matcha:mechanics/wither/kill_wither