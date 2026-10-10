function matcha:timers/1s/warding_enchantment
function matcha:timers/1s/wither_effect

#Shakudo Wither Resistance 
execute as @a[scores={shakudo_regen=0..}] run function matcha:enchantment_effects/shakudo_effects/wither_resistance/apply_resistance