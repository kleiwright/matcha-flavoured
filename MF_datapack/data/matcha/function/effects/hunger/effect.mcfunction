#Bar goes from Full to empty
execute if predicate matcha:effects/hunger/10_or_more_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE044\uE044\uE044\uE044\uE049",color:"dark_green"}]
execute if predicate matcha:effects/hunger/9_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE044\uE044\uE044\uE044\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/8_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE044\uE044\uE044\uE045\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/7_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE044\uE044\uE044\uE046\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/6_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE044\uE044\uE045\uE046\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/5_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE044\uE044\uE046\uE046\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/4_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE044\uE045\uE046\uE046\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/3_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE044\uE046\uE046\uE046\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/2_seconds run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE045\uE046\uE046\uE046\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/1_second run title @s actionbar [{text:"\uE04C",color:"dark_green"},{text:" \uE04A\uE046\uE046\uE046\uE046\uE047",color:"dark_green"}]
execute if predicate matcha:effects/hunger/1_or_less_seconds run title @s actionbar [{text:"\uE04C",color:"white"},{text:" \uE048\uE046\uE046\uE046\uE046\uE047",color:"white"}]
execute if predicate matcha:effects/has_hunger run schedule function matcha:effects/hunger/effect_loop 1t