execute at @a[advancements={matcha:mechanics/hit_copper_eye_1=true}] run playsound minecraft:block.enchantment_table.use block @p ~ ~ ~ 1 2
particle minecraft:trial_spawner_detection ~ ~ ~ .5 .5 .5 0 20
particle block{block_state:"minecraft:copper_grate"} ~ ~ ~ 1 .5 1 .01 30 normal
playsound minecraft:entity.iron_golem.hurt block @a ~ ~-3 ~ 0.4