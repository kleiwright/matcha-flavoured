say <D> Triggered update function for shears
execute if predicate matcha_item:mainhand/shears run function matcha_item:mainhand/shears
execute if predicate matcha_item:offhand/shears run function matcha_item:offhand/shears
advancement revoke @s only matcha_item:trigger/shears