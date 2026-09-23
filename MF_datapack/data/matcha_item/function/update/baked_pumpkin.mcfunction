say <D> Triggered update function for baked_pumpkin
execute if predicate matcha_item:mainhand/baked_pumpkin run function matcha_item:mainhand/baked_pumpkin
execute if predicate matcha_item:offhand/baked_pumpkin run function matcha_item:offhand/baked_pumpkin
advancement revoke @s only matcha_item:trigger/baked_pumpkin