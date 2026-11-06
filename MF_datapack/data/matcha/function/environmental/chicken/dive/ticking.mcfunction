#Decrement 1
scoreboard players remove @e[tag=playing_diving_animation] matcha.diving_animation 1
execute as @e[tag=playing_diving_animation] at @s run function matcha:environmental/chicken/dive/animation_controller
execute if entity @e[tag=playing_diving_animation] run schedule function matcha:environmental/chicken/dive/ticking 1t