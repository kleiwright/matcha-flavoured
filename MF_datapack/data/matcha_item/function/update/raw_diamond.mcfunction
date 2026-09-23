say <D> Triggered update function for raw_diamond
execute if predicate matcha_item:mainhand/raw_diamond run function matcha_item:mainhand/raw_diamond
execute if predicate matcha_item:offhand/raw_diamond run function matcha_item:offhand/raw_diamond
advancement revoke @s only matcha_item:trigger/raw_diamond