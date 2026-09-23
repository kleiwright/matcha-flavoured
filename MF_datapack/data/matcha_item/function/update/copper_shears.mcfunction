say <D> Triggered update function for copper_shears
execute if predicate matcha_item:mainhand/copper_shears run function matcha_item:mainhand/copper_shears
execute if predicate matcha_item:offhand/copper_shears run function matcha_item:offhand/copper_shears
advancement revoke @s only matcha_item:trigger/copper_shears