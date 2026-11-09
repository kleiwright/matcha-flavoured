# Sound
execute if score @s matcha.playing_altar_animation matches 20..40 run playsound minecraft:weather.end_flash ambient @a ~ ~ ~ 1
execute if score @s matcha.playing_altar_animation matches 40 run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.5
# Particles and Motion
execute if score @s matcha.playing_altar_animation matches 40 run data merge entity @s {NoGravity:1b}
execute if score @s matcha.playing_altar_animation matches 40 run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute if score @s matcha.playing_altar_animation matches 40 run execute at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .1 .1 .1 .025 20
execute if score @s matcha.playing_altar_animation matches 35 run execute at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .15 .1 .15 0 2
execute if score @s matcha.playing_altar_animation matches 30 run execute at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .15 .1 .15 0 2
execute if score @s matcha.playing_altar_animation matches 25 run execute at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .15 .1 .15 0 2
execute if score @s matcha.playing_altar_animation matches 20 run execute at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .15 .1 .15 0 2
execute if score @s matcha.playing_altar_animation matches 15 run execute at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .15 .1 .15 0 2
execute if score @s matcha.playing_altar_animation matches 10 run execute at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .15 .1 .15 0 2
execute if score @s matcha.playing_altar_animation matches 5 run execute at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .15 .1 .15 0 2
execute if score @s matcha.playing_altar_animation matches ..0 run data merge entity @s {NoGravity:0b}
execute if score @s matcha.playing_altar_animation matches 1..30 run data merge entity @s {Motion:[0.0,0.01,0.0]}

# Reset and remove (just in case)
execute if score @s matcha.playing_altar_animation matches ..0 run tag @s remove playing_altar_animation
execute if score @s matcha.playing_altar_animation matches ..0 run scoreboard players reset @s matcha.playing_altar_animation