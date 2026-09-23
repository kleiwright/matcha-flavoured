say <D> Triggered update function for mattock
execute if predicate matcha_item:mainhand/mattock run function matcha_item:mainhand/mattock
execute if predicate matcha_item:offhand/mattock run function matcha_item:offhand/mattock
advancement revoke @s only matcha_item:trigger/mattock