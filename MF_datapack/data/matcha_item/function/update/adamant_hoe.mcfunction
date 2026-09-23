say <D> Triggered update function for adamant_hoe
execute if predicate matcha_item:mainhand/adamant_hoe run function matcha_item:enchants/adamant_hoe
execute if predicate matcha_item:offhand/adamant_hoe run function matcha_item:enchants/adamant_hoe
advancement revoke @s only matcha_item:trigger/adamant_hoe