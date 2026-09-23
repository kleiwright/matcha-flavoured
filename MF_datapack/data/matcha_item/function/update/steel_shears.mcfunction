say <D> Triggered update function for steel_shears
execute if predicate matcha_item:mainhand/steel_shears run function matcha_item:mainhand/steel_shears
execute if predicate matcha_item:offhand/steel_shears run function matcha_item:offhand/steel_shears
advancement revoke @s only matcha_item:trigger/steel_shears