#Decrement 1
scoreboard players remove @e[tag=playing_altar_animation] matcha.playing_altar_animation 1
execute as @e[tag=playing_altar_animation] run function matcha:structure/altar/summon_loot/animation_controller
execute if entity @e[tag=playing_altar_animation] run schedule function matcha:structure/altar/summon_loot/ticking 1t