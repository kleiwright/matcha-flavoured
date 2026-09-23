say <D> Triggered update function for steel_mattock
execute if predicate matcha_item:mainhand/steel_mattock run function matcha_item:mainhand/steel_mattock
execute if predicate matcha_item:offhand/steel_mattock run function matcha_item:offhand/steel_mattock
advancement revoke @s only matcha_item:trigger/steel_mattock