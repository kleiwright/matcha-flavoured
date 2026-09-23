say <D> Triggered update function for adamant_pickaxe
execute if predicate matcha_item:mainhand/adamant_pickaxe run function matcha_item:enchants/adamant_pickaxe
execute if predicate matcha_item:offhand/adamant_pickaxe run function matcha_item:enchants/adamant_pickaxe
advancement revoke @s only matcha_item:trigger/adamant_pickaxe