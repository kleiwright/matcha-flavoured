# Sound effects and visual indicator
execute if score @s wither_timer matches 10..13 run playsound minecraft:item.lodestone_compass.lock player @s ~ ~ ~ 0.5 2
execute if score @s wither_timer matches 9 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 2
execute if score @s wither_timer matches 4..8 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5

# Sound Effect and UI display (Shakudo Wither Resistance)
execute if score @s wither_timer matches 13 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE046\uE047",color:"white"},{text:" \uE04F\uE044\uE049",color:"aqua"}]
execute if score @s wither_timer matches 12 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE046\uE047",color:"white"},{text:" \uE04F\uE044\uE047",color:"aqua"}]
execute if score @s wither_timer matches 11 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE046\uE047",color:"white"},{text:" \uE04F\uE045\uE047",color:"aqua"}]
execute if score @s wither_timer matches 10 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE046\uE047",color:"white"},{text:" \uE04F\uE046\uE047",color:"aqua"}]
execute if score @s wither_timer matches 9 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE046\uE047",color:"white"},{text:" \uE052\uE046\uE047",color:"red"}]
execute if score @s wither_timer matches 8 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE046\uE047",color:"white"}]
execute if score @s wither_timer matches 8 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE046\uE047",color:"white"}]
execute if score @s wither_timer matches 7 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE046\uE049",color:"white"}]
execute if score @s wither_timer matches 6 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE04B\uE049",color:"white"}]
execute if score @s wither_timer matches 5 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE048\uE044\uE049",color:"white"}]
execute if score @s wither_timer matches 4 run return run title @s actionbar [{text:"\uE010",color:"red"},{text:" \uE04A\uE044\uE049",color:"white"}]

execute if score @s wither_timer matches 3 run title @s actionbar {text:"\uE010 \uE04A\uE044\uE049",color:"red"}

# Since the function would have returned by now if they weren't at max withering (8+): decrement hearts, clear the wither effect and remove them from the scoreboard
effect clear @s wither
function matcha:mechanics/heart_container/hpdown
playsound minecraft:item.totem.use player @s ~ ~ ~ .25 0 0
damage @s 0.1
scoreboard players reset @s wither_timer
#Grant Player Heart Breaker Adv
advancement grant @s only matcha:hell/wither_breaks_heart