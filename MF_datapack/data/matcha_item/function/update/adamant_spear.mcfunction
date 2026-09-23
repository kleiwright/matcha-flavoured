say <D> Triggered update function for adamant_spear
execute if predicate matcha_item:mainhand/adamant_spear run function matcha_item:enchants/adamant_spear
execute if predicate matcha_item:offhand/adamant_spear run function matcha_item:enchants/adamant_spear
advancement revoke @s only matcha_item:trigger/adamant_spear