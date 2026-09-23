say <D> Triggered update function for baked_potato
execute if predicate matcha_item:mainhand/baked_potato run function matcha_item:mainhand/baked_potato
execute if predicate matcha_item:offhand/baked_potato run function matcha_item:offhand/baked_potato
advancement revoke @s only matcha_item:trigger/baked_potato