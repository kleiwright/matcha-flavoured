say <D> Triggered update function for baked_apple
execute if predicate matcha_item:mainhand/baked_apple run function matcha_item:mainhand/baked_apple
execute if predicate matcha_item:offhand/baked_apple run function matcha_item:offhand/baked_apple
advancement revoke @s only matcha_item:trigger/baked_apple