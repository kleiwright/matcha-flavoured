say <D> Triggered update function for adamant_axe
execute if predicate matcha_item:mainhand/adamant_axe run function matcha_item:enchants/adamant_axe
execute if predicate matcha_item:offhand/adamant_axe run function matcha_item:enchants/adamant_axe
advancement revoke @s only matcha_item:trigger/adamant_axe