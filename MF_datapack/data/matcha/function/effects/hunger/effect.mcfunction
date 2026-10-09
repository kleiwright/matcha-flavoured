# This function is called once per second for every player with a score of 0 or more on the hunger_timer scoreboard

# IF they no longer have hunger, remove them from the scoreboard and cancel the rest of this function
execute unless predicate matcha:effects/has_hunger run title @s actionbar [{text:"\uE007",color:"white"},{text:" \uE048\uE046\uE046\uE046\uE046\uE047",color:"white"}]
execute unless predicate matcha:effects/has_hunger run execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5
execute unless predicate matcha:effects/has_hunger run return run scoreboard players reset @s hunger_timer


#It won't be perfectly in-sync but itll be close enough for UI elements. This funciton only does UI, not any mechanical stuff
scoreboard players remove @s hunger_timer 20

#Ticking sound every second passed
execute if score @s hunger_timer matches -5..999 run execute at @s run playsound minecraft:item.lodestone_compass.lock player @s ~ ~ ~ 0.35 2


#Bar goes from Full to empty
execute if score @s hunger_timer matches 200.. run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE044\uE044\uE044\uE044\uE049",color:"#73aa55"}]
execute if score @s hunger_timer matches 180..199 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE044\uE044\uE044\uE044\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches 160..179 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE044\uE044\uE044\uE045\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches 140..159 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE044\uE044\uE044\uE046\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches 120..139 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE044\uE044\uE045\uE046\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches 100..119 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE044\uE044\uE046\uE046\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches 80..99 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE044\uE045\uE046\uE046\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches 60..79 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE044\uE046\uE046\uE046\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches 40..59 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE045\uE046\uE046\uE046\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches 20..39 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE04A\uE046\uE046\uE046\uE046\uE047",color:"#73aa55"}]
execute if score @s hunger_timer matches ..19 run title @s actionbar [{text:"\uE04C",color:"#73aa55"},{text:" \uE048\uE046\uE046\uE046\uE046\uE047",color:"#73aa55"}]