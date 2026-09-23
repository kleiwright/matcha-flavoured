say <D> Triggered update function for adamant_claymore
execute if predicate matcha_item:mainhand/adamant_claymore run function matcha_item:enchants/adamant_claymore
execute if predicate matcha_item:offhand/adamant_claymore run function matcha_item:enchants/adamant_claymore
advancement revoke @s only matcha_item:trigger/adamant_claymore