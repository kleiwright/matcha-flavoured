say <D> Triggered update function for steel_claymore
execute if predicate matcha_item:mainhand/steel_claymore run function matcha_item:mainhand/steel_claymore
execute if predicate matcha_item:offhand/steel_claymore run function matcha_item:offhand/steel_claymore
advancement revoke @s only matcha_item:trigger/steel_claymore