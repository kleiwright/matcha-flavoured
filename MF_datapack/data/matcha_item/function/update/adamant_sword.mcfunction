say <D> Triggered update function for adamant_sword
execute if predicate matcha_item:mainhand/adamant_sword run function matcha_item:enchants/adamant_sword
execute if predicate matcha_item:offhand/adamant_sword run function matcha_item:enchants/adamant_sword
advancement revoke @s only matcha_item:trigger/adamant_sword