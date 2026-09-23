say <D> Triggered update function for soul_torch
execute if predicate matcha_item:mainhand/soul_torch run function matcha_item:mainhand/soul_torch
execute if predicate matcha_item:offhand/soul_torch run function matcha_item:offhand/soul_torch
advancement revoke @s only matcha_item:trigger/soul_torch