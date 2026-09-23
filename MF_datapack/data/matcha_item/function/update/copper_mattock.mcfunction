say <D> Triggered update function for copper_mattock
execute if predicate matcha_item:mainhand/copper_mattock run function matcha_item:mainhand/copper_mattock
execute if predicate matcha_item:offhand/copper_mattock run function matcha_item:offhand/copper_mattock
advancement revoke @s only matcha_item:trigger/copper_mattock